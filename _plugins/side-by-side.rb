require 'nokogiri'

module Jekyll
  module SideBySideFilter
    def side_by_side_with_subtitle(input, subtitle)
      @doc = Nokogiri::HTML::DocumentFragment.parse(input)
      @elements = []
      @doc.children.each do |node|
        @elements.push(node.to_s)
      end
      @result = '<table class="side-by-side"><tbody>'
      @elements.select { |e| !e.strip.empty? }.each_slice(2).to_a.each do |e|
        @result << %(<tr><td>#{e[0]}</td><td>#{e[1]}</td></tr>)
        if e[0].include? '<h1'
          @result << %(<tr><td>#{subtitle}</td><td></td></tr>)
          # @result << subtitle
        end
      end
      @result << '</table></tbody>'
      return @result
    end
  end
end

Liquid::Template.register_filter(Jekyll::SideBySideFilter)
