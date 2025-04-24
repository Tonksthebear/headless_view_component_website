class DocsController < ApplicationController
  layout "docs"
  before_action :set_page_links

  def dropdown
    @component = "Dropdown Menu"
    @description = "A dropdown menu component that supports keyboard navigation, hover states, and focus management."
  end

  def dialog
    @component = "Dialog"
    @description = "A modal dialog component that supports keyboard navigation, focus management, and accessibility features."
  end

  def disclosure
    @component = "Disclosure"
    @description = "A disclosure component for showing and hiding content, with support for keyboard navigation and accessibility."
  end

  def tabs
    @component = "Tabs"
    @description = "A tabs component with automatic activation, keyboard navigation, and proper ARIA attributes."
  end

  def switch
    @component = "Switch"
    @description = "A switch component that acts as a toggle between two states, with support for keyboard interaction."
  end

  private

  def set_page_links
    @page_links = [
      { name: "Demo", anchor: "#demo" },
      { name: "Basic example", anchor: "#basic-example" },
      { name: "Styling", anchor: "#props", nested: [
        { name: "Using data attributes", anchor: "#data-attributes" },
        { name: "Using parameters", anchor: "#parameters" }
        ] }
    ]
  end
end
