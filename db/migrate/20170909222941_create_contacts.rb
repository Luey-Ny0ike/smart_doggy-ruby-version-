class CreateContacts < ActiveRecord::Migration[5.1]
  def change
    create_table :contacts do |t|
      t.string :full_name
      t.integer :mobile
      t.column :email, :varchar
      t.column :message, :varchar
      t.column :status, :boolean, default: false
    end
  end
end
