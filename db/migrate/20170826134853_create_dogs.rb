class CreateDogs < ActiveRecord::Migration[5.1]
  def change
    create_table :dogs do |t|
      t.string :name
      t.integer :age
      t.string :breed
      t.string :gender
      t.string :color
      t.string :nickname
      t.string :title
      t.column :price, :varchar
      t.string :recomendation
      t.string :description
      t.attachment :image1
      t.attachment :image2
      t.attachment :image3

      t.timestamps
    end
  end
end
