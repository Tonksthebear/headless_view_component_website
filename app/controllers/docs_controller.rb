class DocsController < ApplicationController
  layout "docs"
  before_action :set_page_links

  def dropdown
    @component = "Dropdown Menu"
    @description = "A dropdown menu component that supports keyboard navigation, hover states, and focus management."
  end

  def disclosure
    @component = "Disclosure"
    @description = "A disclosure component for showing and hiding content, with support for keyboard navigation and accessibility."
  end

  def dialog
    @component = "Dialog"
    @description = "A modal dialog component that supports keyboard navigation, focus management, and accessibility features."
  end

  def popover
    @component = "Popover"
    @description = "A popover component that supports keyboard navigation, focus management, and accessibility features."
  end

  def tabs
    @component = "Tabs"
    @description = "A tabs component with automatic activation, keyboard navigation, and proper ARIA attributes."
  end

  def transition
    @component = "Transition"
    @description = "A transition component that supports keyboard navigation, focus management, and accessibility features."
  end

  def button
    @component = "Button"
    @description = "A button component that supports keyboard navigation, focus management, and accessibility features."
  end


  def checkbox
    @component = "Checkbox"
    @description = "A checkbox component that supports keyboard navigation, focus management, and accessibility features."
  end

  def combobox
    @component = "Combobox"
    @description = "A combobox component that supports keyboard navigation, focus management, and accessibility features."
  end

  def fieldset
    @component = "Fieldset"
    @description = "A fieldset component that supports keyboard navigation, focus management, and accessibility features."
  end

  def input
    @component = "Input"
    @description = "An input component that supports keyboard navigation, focus management, and accessibility features."
  end

  def listbox
    @component = "Listbox"
    @description = "A listbox component that supports keyboard navigation, focus management, and accessibility features."
  end

  def radio_group
    @component = "Radio Group"
    @description = "A radio group component that supports keyboard navigation, focus management, and accessibility features."
  end

  def select
    @component = "Select"
    @description = "A select component that supports keyboard navigation, focus management, and accessibility features."
  end

  def switch
    @component = "Switch"
    @description = "A switch component that acts as a toggle between two states, with support for keyboard interaction."
  end

  def textarea
    @component = "Textarea"
    @description = "A textarea component that supports keyboard navigation, focus management, and accessibility features."
  end

  private

  def set_page_links
    @page_links = [
      { name: "Demo", anchor: "#demo" },
      { name: "Basic usage", anchor: "#basic-usage" },
      { name: "Styling", anchor: "#styling", nested: [
        { name: "Using data attributes", anchor: "#using-data-attributes" },
        { name: "Using parameters", anchor: "#using-parameters" }
        ] }
    ]
  end
end
