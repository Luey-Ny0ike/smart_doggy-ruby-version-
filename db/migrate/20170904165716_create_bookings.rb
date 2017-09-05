class CreateBookings < ActiveRecord::Migration[5.1]
  def change
    create_table :bookings do |t|
      t.string :full_name
      t.integer :mobile
      t.column :email, :varchar
      t.column :asking_price, :varchar
      t.column :status, :boolean, default: false
      t.integer :puppy_id
    end
  end
end
