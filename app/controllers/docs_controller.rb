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
    @categories = [
  {
    name: "Recent",
    posts: [
      {
        id: 1,
        title: "Does drinking coffee make you smarter?",
        date: "5h ago",
        comment_count: 5,
        share_count: 2
      },
      {
        id: 2,
        title: "So you've bought coffee... now what?",
        date: "2h ago",
        comment_count: 3,
        share_count: 2
      }
    ]
  },
  {
    name: "Popular",
    posts: [
      {
        id: 1,
        title: "Is tech making coffee better or worse?",
        date: "Jan 7",
        comment_count: 29,
        share_count: 16
      },
      {
        id: 2,
        title: "The most innovative things happening in coffee",
        date: "Mar 19",
        comment_count: 24,
        share_count: 12
      }
    ]
  },
  {
    name: "Trending",
    posts: [
      {
        id: 1,
        title: "Ask Me Anything: 10 answers to your questions about coffee",
        date: "2d ago",
        comment_count: 9,
        share_count: 5
      },
      {
        id: 2,
        title: "The worst advice we've ever heard about coffee",
        date: "4d ago",
        comment_count: 1,
        share_count: 2
      }
    ]
  }
]
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
    @people = [
  { id: 1, name: "Tom Cook" },
  { id: 2, name: "Wade Cooper" },
  { id: 3, name: "Tanya Fox" },
  { id: 4, name: "Arlene Mccoy" },
  { id: 5, name: "Devon Webb" }
]
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
        @options = [
      { id: 1, name: "Tom Cook" },
      { id: 2, name: "Wade Cooper" },
      { id: 3, name: "Tanya Fox" },
      { id: 4, name: "Arlene Mccoy" },
      { id: 5, name: "Devon Webb" }
    ]
    @component = "Listbox"
    @description = "A listbox component that supports keyboard navigation, focus management, and accessibility features."
  end

  def radio_group
        @plans = [
      { name: "Startup", ram: "12GB", cpus: "6 CPUs", disk: "256GB SSD disk" },
      { name: "Business", ram: "16GB", cpus: "8 CPUs", disk: "512GB SSD disk" },
      { name: "Enterprise", ram: "32GB", cpus: "12 CPUs", disk: "1TB SSD disk" }
    ]
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
