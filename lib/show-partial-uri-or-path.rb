RUBY_ENGINE == 'opal' ? (require 'show-partial-uri-or-path/extension') : (require_relative 'show-partial-uri-or-path/extension')

Asciidoctor::Extensions.register do
  include_processor ShowPartialUriOrPath
end
