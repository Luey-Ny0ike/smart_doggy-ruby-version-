class CreateComments < ActiveRecord::Migration[5.1]
  def change
    create_table :comments do |t|
      t.string :comment
      t.column :testimonial_id, :int

      t.timestamps
    end
  end
end
