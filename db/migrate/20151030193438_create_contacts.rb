class CreateContacts < ActiveRecord::Migration
  def change
    create_table :contacts do |t|
      t.string :first_name
      t.string :last_name
      t.date :last_contact_date
      t.text :last_contact_notes
      t.text :bio
      t.string :photo_url

      t.timestamps null: false
    end
  end
end
