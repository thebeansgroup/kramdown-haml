module Haml
  module Filters

    module Markdown
      include Base
      lazy_require 'kramdown'

      # @see Base#render
      def render(text)
        ::Kramdown::Document.new(text).to_html
      end
    end

  end
end
