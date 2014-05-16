module ActiveContacts
  class Contact < ActiveRecord::Base
    set_table_name 'active_contacts_contact'
    attr_accessible :name, :alias, :value
  end
end