require 'rails/generators/active_record'

module ActiveContacts
  module Generators
    class InstallGenerator < ActiveRecord::Generators::Base
      source_root File.expand_path('../templates', __FILE__)

      def manifest
        migration_template 'migration.rb', "db/migrate/create_active_contacts_#{name.underscore.gsub('/', '_')}.rb"
      end

      def create_register
        template 'register.rb', "app/admin/#{name.gsub('/', '_').underscore}.rb"
      end

    end
  end
end
