class ComponentCard < ViewComponent::Base
  attr_reader :title, :href

  def initialize(title:, href:)
    @title = title
    @href = href
  end

  def call
    link_to href, class: "group focus:outline-none" do
      content_tag(:div, class: "relative flex h-64 items-center justify-center bg-white/[4%] transition-colors group-hover:bg-white/[6%] group-focus-visible:ring-1 group-focus-visible:ring-white") do
        content_tag(:div, "", class: "absolute inset-[35%] rounded-full bg-white/15 blur-2xl") +
        content
      end +
      content_tag(:div, title, class: "mt-2 truncate pt-2.5 text-sm font-semibold text-white")
    end
  end
end
