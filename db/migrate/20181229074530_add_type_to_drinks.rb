class AddTypeToDrinks < ActiveRecord::Migration[5.2]

  def change
  	add_column( :drinks, :type, :string)
  end

end
