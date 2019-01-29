class RemoveTypeFromBurgerAndDrink < ActiveRecord::Migration[5.2]

  def change
  	remove_column(:drinks, :type, :string)
  	remove_column(:burgers, :type, :string)
  end

end
