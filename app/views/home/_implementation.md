## React vs Stimulus
Most people reading this probably already know there are drastic differences between how React and Stimulus work. React has a multitude of built in features for accessibility, special shadow dom perks, and other **very** helpful features for component libraries. Converting that over to Stimulus required some tricky work.

## Portals
In React, portals allow the shadow dom to maintain a different hierarchy than the regular dom. For example:
```html
<!-- Shadow DOM -->
<body>
  <!-- Page Content -->
  ...
        <div id="dialog">
          <button id="dialog-button">Open</button>
          <div id="dialog-panel">
            ...
          </div>
        </div>
  ...
</body>


<!-- Regular DOM -->

<body>
  <!-- Page Content -->
  ...
        <div id="dialog">
          <button id="dialog-button">Open</button>

        </div>
  ...
  <div id="dialog-panel">
    ...
  </div>
</body>
```
In this example, #dialog-panel is still treated as a child of #dialog even though the regular renders them separately. This drastically helps ensure certain components render properly without inheriting any styles from parent elements. This feature is crucial for floating elements (Dialog, floating menus, etc.). 

In order to accomplish this in Stimulus, I created a `portal` controller that redefines target and action lookups for the host controller when connected as an [outlet](https://stimulus.hotwired.dev/reference/outlets). Some sample code:

```js
export default class extends ApplicationController {
  static targets = ["button", "panel"]
  static outlets = ["portal"]

  portalOutletConnected(controller) {
    controller.sync(this)
  }

  portalOutletDisconnected(controller) {
    controller.desync(this)
  }
}
```

```html
<body>
  <!-- Page Content -->
  ...
        <div id="dialog" data-controller="dialog" data-dialog-portal-outlet="#portal">
          <button id="dialog-button" data-dialog-target="button">Open</button>
        </div>
  ...
  <div id="portal" data-dialog-target="panel">
    ...
  </div>
</body>
```
Now, with everything is wired up, the `dialog` controller sees the `#portal` div as a native `this.panelTarget` even though it's not a decendant. The `portal` controller will even forward events to the original `dialog` controller so that we don't miss anything. This setup drastically simplifies management of various stimulus controllers in this library. Otherwise, we'd need to create two separate controllers with two separate states for every portaled component (not to mention portaling is *optional*).

## Per-use Javascript

In components like the [listbox](/docs/listbox), the HeadlessUI implementation allows for the user to dynamically define javascript manipulation of the objects being passed. For instance, from [HeadlessUI Listbox](https://headlessui.com/react/listbox):
```js
<ListboxButton
  className={clsx(
    'relative block w-full rounded-lg bg-white/5 py-1.5 pr-8 pl-3 text-left text-sm/6 text-white',
    'focus:not-data-focus:outline-none data-focus:outline-2 data-focus:-outline-offset-2 data-focus:outline-white/25'
  )}
>
  {selected.name}
  <ChevronDownIcon
    className="group pointer-events-none absolute top-2.5 right-2.5 size-4 fill-white/60"
    aria-hidden="true"
  />
</ListboxButton>
```
Here, the developer can choose what information from the `selected` object they want to be displayed on the button. Of course, we had to mimic that
```erb
<%= listbox.with_button class: "relative block w-full rounded-lg bg-white/5 py-1.5 pr-8 pl-3 text-left text-sm/6 text-white focus:outline-none data-[focus]:outline-2 data-[focus]:-outline-offset-2 data-[focus]:outline-white/25", data: {name: "Select an option"} do |button| %>
  {name}
  <%= button.with_icon "chevron-down", class: "group pointer-events-none absolute top-2.5 right-2.5 size-4 fill-white/60" %>
<% end %>
```
The `object` in this setup is the actual selected html `<option>` and the `data-*` attributes are what are referenced in the brackets. In this example, the stimulus controller will read any referenced brackets as data variables and substitute them before rendering. In true stimulus fashion, the data is in the HTML, but it's provided in as flexible of a way as possible.

Another example of this flexibility, the [combobox](/docs/combobox) does NOT provide a filtering mechanism out of the box for [HeadlessUI](https://headlessui.com/react/combobox). In HeadlessUI, you define it inline with rendering the component like so:

```js
const filteredPeople =
  query === ''
    ? people
    : people.filter((person) => {
        return person.name.toLowerCase().includes(query.toLowerCase())
      })

return (
  <div className="mx-auto h-screen w-52 pt-20">
    <Combobox>
    ...
``` 
In this library, we mimic that behavior like so
```erb
<%= render Headless::ComboboxComponent.new do |combobox| %>
  <%= combobox.with_filter do %>
    this.filteredOptions =
     this.query === ''
       ? this.options
       : this.options.filter((option) => {
           return option.dataset.displayValue.toLowerCase().includes(this.query.toLowerCase())
         }).sort((a, b) => a.dataset.displayValue.localeCompare(b.dataset.displayValue))
  <% end %>
  ...
```
While *slightly* different from the HeadlessUI variation, it provides very similar flexibility. The `with_filter` block defines a template tag that the `combobox` controller will inherit as its own function. It's not as flexible as the HeadlessUI variant in that you have to use specific keywords (`this.filteredOptions`, `this.options`), but otherwise you're defining your filtering inline without needing to open the original stimulus controller.


## ViewComponent Slots
In normal ViewComponent rendering, the slots you define are rendered out of order from where you define them. For instance:
```ruby
class CardComponent
  renders_one :header
end
```
```erb
<!-- ViewComponent Template -->
<div>
  <div id="header">
    <%= header %>
  </div>
  <%= content %>
</div>

<!-- Rendering -->

<%= render CardComponent.new |component| %>
   This is the content

   <% component.with_header do %>
     Card Header
   <% end %>
<% end %>

<!-- Result -->
<div>
  <div id="header">
    Card Header
  </div>

  This is the content
</div>
```

This is because the template for the ViewComponent decides ahead of time how and where those slots should be rendered. Without getting into all of the edgecases, this makes it **very** difficult to mimic the flexibility of HeadlessUI components (or even React components in general) as they render the slots in the order you define them. To get around this, this library uses ViewComponents in an unconventional way

```ruby
class CardComponent
  renders_one :header, -> { "<div id="header">content</div>" }
end
```
```erb
<!-- ViewComponent Template -->
<div>
  <%= content %>
</div>

<!-- Rendering -->

<%= render CardComponent.new |component| %>
   This is the content

   <%= component.with_header do %>
     Card Header
   <% end %>
<% end %>

<!-- Result -->
<div>
  <p>This is the content</p>

  <div id="header">
    Card Header
  </div>
</div>
```

The key difference here is we're included the equal sign in the erb synatax `<%=` vs `<%`. This results in the slot rendering as `content` for the component *at the point of definition*. Slots are still useful for managing the vast amount of boilerplate stimulus data attributes we need to add, but it allows this library to maintain an unopinioned approach to how you use the components. We do lose some of the functionality of slots due to the timing of rendering, but we can solve most of those in the stimulus controllers, such as linking `aria-*` attributes correctly.