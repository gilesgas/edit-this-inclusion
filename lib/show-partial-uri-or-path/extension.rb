require 'asciidoctor'
require 'asciidoctor/extensions'

class ShowPartialUriOrPath < Asciidoctor::Extensions::IncludeProcessor
  def handles? target
    (target.include? '_partials')
  end

  def process doc, reader, target, attributes
    content = IO.readlines target
    content.unshift(target)
    reader.push_include content, target, target, 1, attributes
    reader
  end
end
