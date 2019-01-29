class CreateDrinks < ActiveRecord::Migration[5.2]
  def change
    create_table :drinks do |t|
      t.string :name
      t.float :quantity
      t.string :unit

      t.timestamps
    end
  end
end
