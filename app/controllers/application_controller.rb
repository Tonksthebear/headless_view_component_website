class ApplicationController < ActionController::Base
  # Only allow modern browsers supporting webp images, web push, badges, import maps, CSS nesting, and CSS :has.
  allow_browser versions: :modern

  before_action :set_component_links
  before_action :set_form_links

  private

  def set_component_links
    @component_links = [
      { name: "Dropdown Menu", path: "/docs/dropdown" },
      { name: "Disclosure", path: "/docs/disclosure" },
      { name: "Dialog", path: "/docs/dialog" },
      { name: "Popover", path: "/docs/popover" },
      { name: "Tabs", path: "/docs/tabs" },
      { name: "Transition", path: "/docs/transition" }
    ]
  end

  def set_form_links
    @form_links = [
      { name: "Button", path: "/docs/button" },
      { name: "Checkbox", path: "/docs/checkbox" },
      { name: "Combobox", path: "/docs/combobox" },
      { name: "Fieldset", path: "/docs/fieldset" },
      { name: "Input", path: "/docs/input" },
      { name: "Listbox", path: "/docs/listbox" },
      { name: "Radio Group", path: "/docs/radio-group" },
      { name: "Select", path: "/docs/select" },
      { name: "Switch", path: "/docs/switch" },
      { name: "Textarea", path: "/docs/textarea" }
    ]
  end
end
