class Home < ActiveRecord::Migration[5.1]
  def change
    create_table :home do |t|
      t.column :dog_id, :integer
      t.column :puppy_id, :integer
    end
  end
end
