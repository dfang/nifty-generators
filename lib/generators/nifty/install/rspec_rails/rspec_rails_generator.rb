module Nifty
  module Install
    module Generators
      class RspecRailsGenerator < Rails::Generators::Base
        def copy_generator_files
          spec = Gem::Specification.find_by_name("rspec-rails")
          gem_root = spec.gem_dir
          generators_files = gem_root + "/lib/generators"
          FileUtils.mkdir_p 'lib/generators/'
          FileUtils.cp_r generators_files, 'lib/'
          p 'copied generators(lib/generators/*) in rspec-rails to lib/generators for customization'
        end
      end
    end
  end
end
