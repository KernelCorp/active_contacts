class CreateActiveContacts<%= name %> < ActiveRecord::Migration
  def change
    create_table :active_contacts_<%= name.underscore.to_sym %> do |t|
      t.string :name
      t.string :alias
      t.string :value
      t.timestamps
    end
  end
end
