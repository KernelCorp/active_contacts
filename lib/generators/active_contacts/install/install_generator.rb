require 'rails/generators/active_record'

module ActiveContacts
  module Generators
    class InstallGenerator <  Rails::Generators::Base

      include Rails::Generators::Migration

      source_root File.expand_path('../templates', __FILE__)

      def manifest
        migration_template 'migration.rb', "db/migrate/create_active_contacts_contact.rb"
      end

      def create_register
        template 'register.rb', "app/admin/contact.rb"
      end

      def self.next_migration_number(dirname)
        next_migration_number = current_migration_number(dirname) + 1
        ActiveRecord::Migration.next_migration_number(next_migration_number)
      end
    end
  end
end
