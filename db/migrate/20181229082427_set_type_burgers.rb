class SetTypeBurgers < ActiveRecord::Migration[5.2]

  def change
  	Burger.all().each do |b|
  		b.update_columns(type: "Article")
  	end
  end

end
