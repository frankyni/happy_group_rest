class ItemController < ApplicationController

	before_action :authenticate_admin!
	before_action :set_item, only: [:edit, :update, :destroy]

	def new
		@item = Item.new
	end

	def create
		@item = Item.new
	end

	def edit
	end

	def update

	end

	def destroy

	end

	private

	def set_item
		@item = Item.find_by_id(params[:id])
	end

	def item_params
		params.require(:item).permit(:name, :type, :desc, :sm_price, :lg_price, :price, :ln_price, :combo_price, )
	end
end