```erb
<%= render Headless::DisclosureComponent.new(class: "p-6", default_open: true) do |disclosure| %>
  <%= disclosure.with_button(autofocus: true, class: "group flex w-full items-center justify-between") do %>
    <span class="text-sm/6 font-medium text-white group-data-[hover]:text-white/80">
      What is your refund policy?
    </span>
    <%= heroicon("chevron-down", class: "size-5 fill-white/60 group-data-[hover]:fill-white/50 group-data-[open]:rotate-180") %>
  <% end %>
  <%= disclosure.with_panel(class: "mt-2 text-sm/5 text-white/50") do %>
    If you're unhappy with your purchase, we'll refund you in full.
  <% end %>
<% end %>
<%= render Headless::DisclosureComponent.new(class: "p-6") do |disclosure| %>
  <%= disclosure.with_button(class: "group flex w-full items-center justify-between") do %>
    <span class="text-sm/6 font-medium text-white group-data-[hover]:text-white/80">
      Do you offer technical support?
    </span>
    <%= heroicon("chevron-down", class: "size-5 fill-white/60 group-data-[hover]:fill-white/50 group-data-[open]:rotate-180") %>
  <% end %>
  <%= disclosure.with_panel(class: "mt-2 text-sm/5 text-white/50") do %>
    No.
  <% end %>
<% end %>
```