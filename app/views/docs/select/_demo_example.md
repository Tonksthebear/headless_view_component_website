```erb
<%= render Headless::FieldComponent.new(class: "w-full max-w-md px-4") do |field| %>
  <%= field.with_label(class: "text-sm/6 font-medium text-white") do %>
    Project status
  <% end %>
  <%= field.with_description(class: "text-sm/6 text-white/50") do %>
    This will be visible to clients on the project.
  <% end %>
  <div class="relative">
    <%= field.with_select(class: "mt-3 block w-full appearance-none rounded-lg border-none bg-white/5 px-3 py-1.5 text-sm/6 text-white focus:not-data-focus:outline-none data-focus:outline-2 data-focus:-outline-offset-2 data-focus:outline-white/25 *:text-black") do |select| %>
      <option value="active">Active</option>
      <option value="paused">Paused</option>
      <option value="delayed">Delayed</option>
      <option value="canceled">Canceled</option>
      <%= heroicon(
        "chevron-down",
        variant: "mini",
        class: "group pointer-events-none absolute top-2.5 right-2.5 size-4 fill-white/60",
        aria_hidden: "true",
      ) %>
    <% end %>
  </div>
<% end %>
```