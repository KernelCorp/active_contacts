class CreateActiveContactsContact < ActiveRecord::Migration
  def change
    create_table :active_contacts_contact do |t|
      t.string :name
      t.string :alias
      t.string :value
      t.timestamps
    end
  end
end
