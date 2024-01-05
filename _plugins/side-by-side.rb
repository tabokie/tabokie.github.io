require 'nokogiri'

module Jekyll
  module SideBySideFilter
    def side_by_side_with_subtitle(input, mode, subtitle)
      @doc = Nokogiri::HTML::DocumentFragment.parse(input)
      @elements = []
      @doc.children.each do |node|
        @elements.push(node.to_s)
      end
      @result = '<table class="side-by-side"><tbody>'
      if mode == 'translation'
        @elements.select { |e| !e.strip.empty? }.each_slice(2).to_a.each do |e|
          @result << %(<tr><td>#{e[0]}</td><td>#{e[1]}</td></tr>)
          if !subtitle.strip.empty? and e[0].include? '<h1'
            @result << %(<tr><td>#{subtitle}</td><td></td></tr>)
          end
        end
      elsif mode == 'comment'
        @comments = ''
        @opened = false
        @elements.select { |e| !e.strip.empty? }.each do |e|
          if e.slice! '[NOTE] '
            @comments << e
          else
            if @opened
              @result << %(<td>#{@comments}</td></tr>)
              @comments = ''
            end
            if e.include? '<h1'
              @result << %(<tr><td>#{e}#{subtitle}</td>)
            else
              @result << %(<tr><td>#{e}</td>)
            end
            @opened = true
          end
        end
      end
      @result << '</table></tbody>'
      return @result
    end
  end
end

Liquid::Template.register_filter(Jekyll::SideBySideFilter)
