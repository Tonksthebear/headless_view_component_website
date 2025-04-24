```erb
<div class="flex h-screen w-full justify-center pt-24 px-4">
  <div class="w-full max-w-md">
    <%= render Headless::Tab::GroupComponent.new do |tab_group| %>
      <%= tab_group.with_tab_list(class: "flex gap-4") do %>
        <% @categories.each do |category| %>
          <%= tab_group.with_tab(class: "rounded-full py-1 px-3 text-sm/6 font-semibold text-white focus:outline-none data-[selected]:bg-white/10 data-[hover]:bg-white/5 data-[selected]:data-[hover]:bg-white/10 data-[focus]:outline-solid data-[focus]:outline-1 data-[focus]:outline-white") do %>
            <%= category[:name] %>
          <% end %>
        <% end %>
      <% end %>
      <%= tab_group.with_panels(class: "mt-3") do %>
        <% @categories.each do |category| %>
          <%= tab_group.with_tab_panel(class: "rounded-xl bg-white/5 p-3") do %>
            <ul>
              <% category[:posts].each do |post| %>
                <li class="relative rounded-md p-3 text-sm/6 transition hover:bg-white/5">
                  <a href="#" class="font-semibold text-white">
                    <span class="absolute inset-0"></span>
                    <%= post[:title] %>
                  </a>
                  <ul class="flex gap-2 text-white/50" aria-hidden="true">
                    <li><%= post[:date] %></li>
                    <li aria-hidden="true">&middot;</li>
                    <li><%= post[:comment_count] %> comments</li>
                    <li aria-hidden="true">&middot;</li>
                    <li><%= post[:share_count] %> shares</li>
                  </ul>
                </li>
              <% end %>
            </ul>
          <% end %>
        <% end %>
      <% end %>
    <% end %>
  </div>
</div>
```