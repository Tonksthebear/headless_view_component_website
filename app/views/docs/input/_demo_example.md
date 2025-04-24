```erb
<%= render Headless::FieldComponent.new(class: "w-full max-w-md px-4") do |field| %>
  <%= field.with_label(class: "text-sm/6 font-medium text-white") do %>
    Name
  <% end %>
  <%= field.with_description(class: "text-sm/6 text-white/50") do %>
    Use your real name so people will recognize you.
  <% end %>
  <%= field.with_input(
    class:
      "mt-3 block w-full rounded-lg border-none bg-white/5 px-3 py-1.5 text-sm/6 text-white focus:not-data-focus:outline-none data-focus:outline-2 data-focus:-outline-offset-2 data-focus:outline-white/25",
  ) %>
<% end %>
```