class AddSizeToFries < ActiveRecord::Migration[5.2]

  def change
  	add_column(:articles, :size, :integer)
  end

end
