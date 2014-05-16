require 'spec_helper'
require 'generators/active_contacts/install/install_generator'

describe ActiveContacts::Generators::InstallGenerator, type: :generator do
  destination File.expand_path("../../tmp", __FILE__)

  before do
    prepare_destination
    run_generator
  end

  specify do
    destination_root.should have_structure {
      directory 'app' do
        directory 'admin' do
          file 'contact.rb'
        end
      end
      directory "db" do
        directory "migrate" do
          migration "create_active_contacts_contact"
        end
      end
    }
  end
end