```erb
<div class="w-full max-w-lg px-4">
  <%= render Headless::FieldsetComponent.new(class: "space-y-6 rounded-xl bg-white/5 p-6 sm:p-10") do |fieldset| %>
    <%= fieldset.with_legend(class: "text-base/7 font-semibold text-white") do %>
      Shipping details
    <% end %>
    <%= fieldset.with_field do |field| %>
      <%= field.with_label(class: "text-sm/6 font-medium text-white") do %>
        Street address
      <% end %>
      <%= field.with_input(
        class:
          "mt-3 block w-full rounded-lg border-none bg-white/5 py-1.5 px-3 text-sm/6 text-white focus:outline-none data-[focus]:outline-2 data-[focus]:-outline-offset-2 data-[focus]:outline-white/25",
      ) %>
    <% end %>
    <%= fieldset.with_field do |field| %>
      <%= field.with_label(class: "text-sm/6 font-medium text-white") do %>
        Country
      <% end %>
      <%= field.with_description(class: "text-sm/6 text-white/50") do %>
        We currently only ship to North America.
      <% end %>
      <div class="relative">
        <%= field.with_select(class: "mt-3 block w-full appearance-none rounded-lg border-none bg-white/5 py-1.5 px-3 text-sm/6 text-white focus:outline-none data-[focus]:outline-2 data-[focus]:-outline-offset-2 data-[focus]:outline-white/25 *:text-black") do %>
          <option>Canada</option>
          <option>Mexico</option>
          <option>United States</option>
        <% end %>
        <%= field.with_icon "chevron-down",
                        class: "group pointer-events-none absolute top-2.5 right-2.5 size-4 fill-white/60",
                        aria: {
                          hidden: true,
                        } %>
      </div>
    <% end %>
    <%= fieldset.with_field do |field| %>
      <%= field.with_label(class: "text-sm/6 font-medium text-white") do %>
        Delivery notes
      <% end %>
      <%= field.with_description(class: "text-sm/6 text-white/50") do %>
        If you have a tiger, we'd like to know about it.
      <% end %>
      <%= field.with_textarea(
        class:
          "mt-3 block w-full resize-none rounded-lg border-none bg-white/5 py-1.5 px-3 text-sm/6 text-white focus:outline-none data-[focus]:outline-2 data-[focus]:-outline-offset-2 data-[focus]:outline-white/25",
        rows: 3,
      ) %>
    <% end %>
  <% end %>
</div>
```