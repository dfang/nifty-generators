module Nifty
  module Install
    module Generators
      class HamlRailsGenerator < Rails::Generators::Base
        def copy_generator_files
          spec = Gem::Specification.find_by_name("haml-rails")
          gem_root = spec.gem_dir
          generators_files = gem_root + "/lib/generators"
          FileUtils.mkdir_p 'lib/generators/haml'
          FileUtils.cp_r generators_files, 'lib/'
          p 'copied generators(lib/generators/*) in haml-rails to lib/generators'
        end
      end
    end
  end
end
