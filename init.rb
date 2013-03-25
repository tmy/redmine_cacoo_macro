Redmine::Plugin.register :redmine_cacoo_macro do
  name 'Redmine Cacoo Macro plugin'
  author 'Akinori Tomita'
  description 'Embeds Cacoo diagram macro'
  version '0.0.1'
  url 'https://github.com/tmy/redmine_gemoji'
  author_url 'https://github.com/tmy'
end

Redmine::WikiFormatting::Macros.register do
  macro :cacoo do |obj, args|
    raise "Cacoo diagram ID is missing." if args.size == 0
    diagram_id = args.first
    tag(:iframe, :src => 'https://cacoo.com/diagrams/' + CGI.escape(diagram_id) + '/view', :width => 402, :height => 330, :frameborder => 0, :scrolling => 'no')
  end
end
