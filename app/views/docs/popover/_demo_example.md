```erb
<%= render Headless::PopoverComponent.new(open: true) do |popover| %>
  <%= popover.with_button(class: "block text-sm/6 font-semibold text-white/50 data-[active]:text-white data-[hover]:text-white data-[focus]:outline-1 data-[focus]:outline-white") do %>
    Solutions
  <% end %>

  <%= popover.with_panel(anchor: "bottom", class: "divide-y divide-white/5 rounded-xl bg-white/5 text-sm/6 transition duration-200 ease-in-out [--anchor-gap:calc(var(--spacing)*5)] data-[closed]:-translate-y-1 data-[closed]:opacity-0") do %>
    <div class="p-3">
      <a class="block rounded-lg py-2 px-3 transition hover:bg-white/5 focus:bg-white/5" href="#">
        <p class="font-semibold text-white">Insights</p>
        <p class="text-white/50">Measure actions your users take</p>
      </a>
      <a class="block rounded-lg py-2 px-3 transition hover:bg-white/5 focus:bg-white/5" href="#">
        <p class="font-semibold text-white">Automations</p>
        <p class="text-white/50">Create your own targeted content</p>
      </a>
      <a class="block rounded-lg py-2 px-3 transition hover:bg-white/5 focus:bg-white/5" href="#">
        <p class="font-semibold text-white">Reports</p>
        <p class="text-white/50">Keep track of your growth</p>
      </a>
    </div>
    <div class="p-3">
      <a class="block rounded-lg py-2 px-3 transition hover:bg-white/5 focus:bg-white/5" href="#">
        <p class="font-semibold text-white">Documentation</p>
        <p class="text-white/50">Start integrating products and tools</p>
      </a>
    </div>
  <% end %>
<% end %>
```