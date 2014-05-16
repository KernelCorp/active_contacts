module ActiveContacts
  class Contact < ActiveRecord::Base
    self.table_name = 'active_contacts_contact'
    attr_accessible :name, :alias, :value
  end
end