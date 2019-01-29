class AddOldDrinksQuantityToArticlesTable < ActiveRecord::Migration[5.2]

  def change
  	ActiveRecord::Base.connection.execute("SELECT * from drinks").each do |d| 
  		Drink.where(name: d["name"]).update(quantity: d["quantity"])
  	end
  end

end
