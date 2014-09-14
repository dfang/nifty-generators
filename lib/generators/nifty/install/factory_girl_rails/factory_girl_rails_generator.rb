module Nifty
  module Install
    module Generators
      class FactoryGirlRailsGenerator < Rails::Generators::Base
        def copy_generator_files
          spec = Gem::Specification.find_by_name("factory_girl_rails")
          gem_root = spec.gem_dir
          generators_files = gem_root + "/lib/generators"
          FileUtils.mkdir_p 'lib/generators/factory_girl'
          FileUtils.cp_r generators_files, 'lib/'
          p 'copied generators(lib/generators/*) in factory_girl_rails to lib/generators'
        end
      end
    end
  end
end
