RUBY_ENGINE == 'opal' ? (require 'edit-this-inclusion/extension') : (require_relative 'edit-this-inclusion/extension')

Extensions.register do
  block EditThisInclusion
end
