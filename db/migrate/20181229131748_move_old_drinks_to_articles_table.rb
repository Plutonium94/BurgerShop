class MoveOldDrinksToArticlesTable < ActiveRecord::Migration[5.2]

  def change
  	ActiveRecord::Base.connection.execute("SELECT * from drinks").each do |drink| 
  		Drink.create(:name=>drink["name"], :price=>drink["price"], :unit=>drink["unit"])
  	end
  end

end
