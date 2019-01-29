class MoveOldBurgersToArticlesTable < ActiveRecord::Migration[5.2]

  def change
  	ActiveRecord::Base.connection.execute("select * from burgers").each do |b|
  		Burger.create(:name=> b["name"], :description=>b["description"], :price=>b["price"])
  	end
  end

end
