module Haml
  module Filters
    module Markdown
      include Haml::Filters::Base
      lazy_require 'kramdown'

      def render(text)
        ::Kramdown::Document.new(text).to_html
      end
    end
  end
end


