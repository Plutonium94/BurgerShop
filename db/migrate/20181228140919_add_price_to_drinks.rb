class AddPriceToDrinks < ActiveRecord::Migration[5.2]

  def up
  	add_column(:drinks, :price, :float)
  end

  def down
	remove_column(:drinks, :price, :float)  	
  end

end
