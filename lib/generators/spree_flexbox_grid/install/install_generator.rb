module SpreeFlexboxGrid
  module Generators
    class InstallGenerator < Rails::Generators::Base
      class_option :auto_run_migrations, type: :boolean, default: false

      def add_stylesheets
        inject_into_file 'vendor/assets/stylesheets/spree/frontend/all.css', " *= require spree/frontend/spree_flexbox_grid\n", before: %r{\*\/}, verbose: true
      end

    end
  end
end
