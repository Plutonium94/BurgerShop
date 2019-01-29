class AddDescriptionQuantityUnitToArticle < ActiveRecord::Migration[5.2]

  def change
  	add_column(:articles, :description, :text)
  	add_column(:articles,:quantity,:float)
  	add_column(:articles, :unit, :string)
  end

end
