```erb
<div class="pt-30 flex flex-col items-center" data-controller="headless--transition">
  <div class="size-[6.25rem]">
    <div
      data-headless--transition-target="child"
      class="
        size-full rounded-xl bg-white shadow-lg transition duration-400 data-closed:scale-50 data-closed:rotate-[-120deg]
        data-closed:opacity-0 data-leave:duration-200 data-leave:ease-in-out data-leave:data-closed:scale-95
        data-leave:data-closed:rotate-[0deg]
      "
    >
    </div>
  </div>
  <%= render Headless::ButtonComponent.new(as: :button, class: "mt-10 flex items-center gap-2 rounded-full bg-white/10 px-3 py-1 text-sm/6 font-semibold text-white transition data-hover:scale-105 data-hover:bg-white/15", data: { action: "headless--transition#toggle headless--transition#toggle" }) do %>
    <%= heroicon "arrow-path", variant: "micro", class: "size-4 fill-white/50" %>
    <span>Click to transition</span>
  <% end %>
</div>
```