module Nifty
  module Install
    module Generators
      class SimpleFormGenerator < Rails::Generators::Base
        def copy_generator_files
          spec = Gem::Specification.find_by_name("simple_form")
          gem_root = spec.gem_dir
          generators_files = gem_root + "/lib/generators"
          FileUtils.mkdir_p 'lib/generators/simple_form'
          FileUtils.cp_r generators_files, 'lib/'
          p 'copied generators(lib/generators/*) in simple_form to lib/generators'
        end
      end
    end
  end
end
