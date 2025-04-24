```erb
<%= render Headless::FieldComponent.new(class: "w-full max-w-md px-4") do |field| %>
  <%= field.with_label(class: "text-sm/6 font-medium text-white") do %>
    Description
  <% end %>
  <%= field.with_description(class: "text-sm/6 text-white/50") do %>
    This will be shown under the product title.
  <% end %>
  <%= field.with_textarea(
    class: "mt-3 block w-full resize-none rounded-lg border-none bg-white/5 px-3 py-1.5 text-sm/6 text-white",
    rows: 3,
  ) %>
<% end %>
```