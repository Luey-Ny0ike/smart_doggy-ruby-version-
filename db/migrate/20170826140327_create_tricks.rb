class CreateTricks < ActiveRecord::Migration[5.1]
  def change
    create_table :tricks do |t|
      t.string :title
      t.string :step1
      t.string :step2
      t.string :step3
      t.string :step4
      t.string :extratips
      t.column :img1, :varchar
      t.column :img2, :varchar
      t.column :video, :varchar

      t.timestamps
    end
  end
end
