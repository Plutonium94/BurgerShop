class SetTypeDrinks < ActiveRecord::Migration[5.2]

  def change
  	execute "UPDATE drinks SET type = 'Article' where type is NULL"
  end

end
