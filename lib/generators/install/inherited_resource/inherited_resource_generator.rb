module Install
  module Generators
    class InheritedResourceGenerator < Rails::Generators::Base
      def copy_generator_files
        spec = Gem::Specification.find_by_name("inherited_resources")
        gem_root = spec.gem_dir
        generators_files = gem_root + "/lib/generators/rails"
        FileUtils.mkdir_p 'lib/generators/'
        FileUtils.cp_r generators_files, 'lib/generators/'
        p 'copied generators(lib/generators/*) in inherited_resources to lib/generators for customization'
      end
    end
  end
end
