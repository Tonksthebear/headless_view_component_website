```erb
<%= render Headless::DialogComponent.new(id: "test", class: "relative z-50") do |dialog| %>
  <%= dialog.with_button(class: "rounded-md bg-black/20 py-2 px-4 text-sm font-medium text-white focus:outline-none data-[hover]:bg-black/30 data-[focus]:outline-1 data-[focus]:outline-white", data: { modal: "test" }).with_content("Open Dialog") %>
  <%= dialog.with_backdrop(class: "fixed inset-0 bg-black/30 duration-300 ease-out data-[closed]:opacity-0") %>
  <div class="fixed inset-0 flex w-screen items-center justify-center p-4">
    <%= dialog.with_panel(class: "w-full max-w-md rounded-xl bg-white/5 p-6 backdrop-blur-2xl duration-300 ease-out data-[closed]:transform-[scale(95%)] data-[closed]:opacity-0") do |panel| %>
      <%= render dialog.with_title(as: :h3, class: "text-base/7 font-medium text-white").with_content("Payment successful") %>
      <%= render dialog.with_description.with_content("This will permanently deactivate your account") %>
      <p class="mt-2 text-sm/6 text-white/50">
        Your payment has been successfully submitted. We’ve sent you an email with all of the details of your
        order.
      </p>
      <p>Are you sure you want to deactivate your account? All of your data will be permanently removed.</p>
      <div class="flex gap-4">
        <%= render Headless::ButtonComponent.new(class: "rounded-md bg-blue-500 px-4 py-2 text-white").with_content("Deactivate") %>
        <%= dialog.with_back_button(class: "inline-flex items-center gap-2 rounded-md bg-gray-700 py-1.5 px-3 text-sm/6 font-semibold text-white shadow-inner shadow-white/10 focus:outline-none data-[hover]:bg-gray-600 data-[focus]:outline-1 data-[focus]:outline-white data-[open]:bg-gray-700").with_content("Cancel") %>
      </div>
    <% end %>
  </div>
<% end %>
```