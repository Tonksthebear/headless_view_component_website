```erb
<div class="mx-auto h-screen w-52 pt-20">
  <%= render Headless::ComboboxComponent.new(immediate: true, default_value: [2]) do |combobox| %>
    <%= combobox.with_filter do %>
      this.filteredOptions =
       this.query === ''
         ? this.options
         : this.options.filter((option) => {
             return option.dataset.displayValue.toLowerCase().includes(this.query.toLowerCase())
           }).sort((a, b) => a.dataset.displayValue.localeCompare(b.dataset.displayValue))
    <% end %>
    <div class="relative">
      <%= combobox.with_input(class: "w-full rounded-lg border-none bg-white/5 py-1.5 pr-8 pl-3 text-sm/6 text-white") %>
      <%= combobox.with_button(class: "group absolute inset-y-0 right-0 px-2.5") do %>
        <%= heroicon("chevron-down", class: "size-4 fill-white/60 group-data-[hover]:fill-white") %>
      <% end %>
    </div>
    <%= combobox.with_options_container(class: "w-[var(--input-width)] rounded-xl border border-white/5 bg-white/5 p-1 [--anchor-gap:--spacing(1)] empty:invisible transition duration-100 ease-in data-[leave]:data-[closed]:opacity-0 flex flex-col") do %>
      <%= combobox.with_option(class: "group flex cursor-default items-center gap-2 rounded-lg py-1.5 px-3 select-none data-[focus]:bg-white/10") do %>
        <%= heroicon("check", variant: "micro", class: "invisible size-4 fill-white group-data-[selected]:visible") %>
        <div class="text-sm/6 text-white">
          Create
          <span class="font-bold">"{query}"</span>
        </div>
      <% end %>
      <% combobox_options.each do |option| %>
        <%= combobox.with_option(value: option[:id], display_value: option[:name], class: "group flex cursor-default items-center gap-2 rounded-lg py-1.5 px-3 select-none data-[focus]:bg-white/10") do %>
          <%= heroicon("check", variant: "micro", class: "invisible size-4 fill-white group-data-[selected]:visible") %>
          <div class="text-sm/6 text-white">
            <%= option[:name] %>
          </div>
        <% end %>
      <% end %>
    <% end %>
  <% end %>
</div>
```