class CreatePuppies < ActiveRecord::Migration[5.1]
  def change
    create_table :puppies do |t|
      t.string :name
      t.integer :age
      t.string :breed
      t.string :gender
      t.string :color
      t.string :nickname
      t.string :title
      t.integer :price
      t.string :recomendation
      t.string :description

      t.timestamps
    end
  end
end
