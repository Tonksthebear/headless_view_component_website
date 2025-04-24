```erb
<%= render Headless::MenuComponent.new(class: "absolute top-24 w-52 text-right") do |menu| %>
  <%= menu.with_button(class: "inline-flex items-center gap-2 rounded-md bg-zinc-800 py-1.5 px-3 text-sm/6 font-semibold text-white shadow-inner shadow-white/10 focus:outline-none data-[hover]:bg-zinc-700 data-[open]:bg-zinc-700 data-[focus]:outline-1 data-[focus]:outline-white") do |button| %>
    Options
    <%= button.with_icon "chevron-down", class: "size-4 fill-white/60" %>
  <% end %>

  <%= menu.with_items(anchor: "bottom end", class: "w-52 origin-top-right rounded-xl border border-white/5 bg-white/5 p-1 text-sm/6 text-white transition duration-100 ease-out [--anchor-gap:--spacing(1)] focus:outline-none data-[closed]:scale-95 data-[closed]:opacity-0") do |items| %>
    <%= items.with_item_button(class: "group flex w-full items-center gap-2 rounded-lg py-1.5 px-3 data-[focus]:bg-white/10") do |item| %>
      <%= item.with_icon "pencil", class: "size-4 fill-white/30" %>
      Edit
      <span class="ml-auto hidden font-sans text-xs text-white/50 group-data-[focus]:inline">⌘E</span>
    <% end %>

    <%= items.with_item_button(class: "group flex w-full items-center gap-2 rounded-lg py-1.5 px-3 data-[focus]:bg-white/10") do |item| %>
      <%= item.with_icon "document-duplicate", class: "size-4 fill-white/30" %>
      Duplicate
      <span class="ml-auto hidden font-sans text-xs text-white/50 group-data-[focus]:inline">⌘D</span>
    <% end %>

    <%# items.with_separator %>

    <%= items.with_item_button(class: "group flex w-full items-center gap-2 rounded-lg py-1.5 px-3 data-[focus]:bg-white/10") do |item| %>
      <%= item.with_icon "archive-box", class: "size-4 fill-white/30" %>
      Archive
      <span class="ml-auto hidden font-sans text-xs text-white/50 group-data-[focus]:inline">⌘A</span>
    <% end %>

    <%= items.with_item_button(class: "group flex w-full items-center gap-2 rounded-lg py-1.5 px-3 data-[focus]:bg-white/10") do |item| %>
      <%= item.with_icon "trash", class: "size-4 fill-white/30" %>
      Delete
      <span class="ml-auto hidden font-sans text-xs text-white/50 group-data-[focus]:inline">⌘T</span>
    <% end %>
  <% end %>
<% end %>
```