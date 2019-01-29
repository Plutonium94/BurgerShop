class DrinksController < ApplicationController

	def index
		@drinks = Drink.all
	end

	def show
		@drink = Drink.find(params[:id])
	end

	def new
		@drink = Drink.new
	end

	def create
		@drink = Drink.new(params.require(:drink).permit(:name, :quantity, :price, :unit))
		if @drink.save
			render :show
		else
			render :new
		end
	end

	def destroy
		@drink = Drink.find(params[:id])
		@drink.destroy
		redirect_to :drinks
	end
end
