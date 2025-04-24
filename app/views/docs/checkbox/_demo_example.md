```erb
<%= render Headless::CheckboxComponent.new(class: "group size-6 rounded-md bg-white/10 p-1 ring-1 ring-white/15 ring-inset focus:not-data-focus:outline-none data-checked:bg-white data-focus:outline data-focus:outline-offset-2 data-focus:outline-white") do |checkbox| %>
  <%= checkbox.with_icon "check", class: "hidden size-4 fill-black group-data-[checked]:block" %>
<% end %>
```