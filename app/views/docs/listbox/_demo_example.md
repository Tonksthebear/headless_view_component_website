```erb
<%= render Headless::ListboxComponent.new do |listbox| %>
  <%= listbox.with_button class: "relative block w-full rounded-lg bg-white/5 py-1.5 pr-8 pl-3 text-left text-sm/6 text-white focus:outline-none data-[focus]:outline-2 data-[focus]:-outline-offset-2 data-[focus]:outline-white/25", data: {display_name: "Select an option"} do |button| %>
    {displayName}
    <%= button.with_icon "chevron-down", class: "group pointer-events-none absolute top-2.5 right-2.5 size-4 fill-white/60" %>
  <% end %>
  <%= listbox.with_options_container anchor: "bottom", class: "w-[var(--button-width)] rounded-xl border border-white/5 bg-white/5 p-1 [--anchor-gap:--spacing(1)] focus:outline-none transition duration-100 ease-in data-[leave]:data-[closed]:opacity-0" do %>
    <% @options.each do |listbox_option| %>
      <%= listbox.with_option class: "group flex cursor-default items-center gap-2 rounded-lg py-1.5 px-3 select-none data-[focus]:bg-white/10", data: { value: listbox_option[:value], display_name: listbox_option[:name], test: "hello there" } do |option| %>
        <%= option.with_icon "check", class: "invisible size-4 fill-white group-data-[selected]:visible" %>
        <div class="text-sm/6 text-white"><%= listbox_option[:name] %></div>
      <% end %>
    <% end %>
  <% end %>
<% end %>
```