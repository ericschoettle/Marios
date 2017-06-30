class CreateProducts < ActiveRecord::Migration[5.1]
  def change
    create_table :products do |t|
      t.string :name
      t.integer :rating
      t.float :cost
      t.string :country

      t.timestamps
    end
  end

end
