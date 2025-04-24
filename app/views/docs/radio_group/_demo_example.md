```erb
<%= render Headless::Radio::GroupComponent.new(name: "server-size", class: "space-y-2", aria_label: "Server size") do |radio_group| %>
  <% @plans.each do |plan| %>
    <%= radio_group.with_radio(plan[:ram], class: "group relative flex cursor-pointer rounded-lg bg-white/5 py-4 px-5 text-white shadow-md transition focus:outline-none data-[focus]:outline-1 data-[focus]:outline-white data-[checked]:bg-white/10") do %>
      <div class="flex w-full items-center justify-between">
        <div class="text-sm/6">
          <p class="font-semibold text-white"><%= plan[:name] %></p>
          <div class="flex gap-2 text-white/50">
            <div><%= plan[:ram] %></div>
            <div aria-hidden="true">&middot;</div>
            <div><%= plan[:cpus] %></div>
            <div aria-hidden="true">&middot;</div>
            <div><%= plan[:disk] %></div>
          </div>
        </div>
        <%= heroicon(
          "check-circle",
          variant: "mini",
          class: "size-6 fill-white opacity-0 transition group-data-[checked]:opacity-100",
        ) %>
      </div>
    <% end %>
  <% end %>
<% end %>
```