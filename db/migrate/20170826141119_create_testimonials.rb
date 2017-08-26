class CreateTestimonials < ActiveRecord::Migration[5.1]
  def change
    create_table :testimonials do |t|
      t.string :title
      t.column :message, :varchar

      t.timestamps
    end
  end
end
