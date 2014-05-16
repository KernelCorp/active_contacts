require 'active_contacts/engine'
module ActiveContacts
  def self.setup
    yield self
  end
end
