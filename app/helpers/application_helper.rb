
module ApplicationHelper
  def render_markdown(text, **options)
    return "" unless text.present?
    Commonmarker.to_html(text, options: { plugins: { header_ids: true }, render: { width: 1000 } }).html_safe
  end
end
