module Nifty
  module Install
    module Generators
      class RailsGenerator < Rails::Generators::Base
        def copy_generator_files
          spec = Gem::Specification.find_by_name("railties")
          gem_root = spec.gem_dir
          generators_files = gem_root + "/lib/rails/generators"
          FileUtils.mkdir_p 'lib/rails/generators'
          FileUtils.cp_r generators_files, 'lib/rails'
          p 'copied rails generators to lib/rails/'
        end
      end
    end
  end
end
