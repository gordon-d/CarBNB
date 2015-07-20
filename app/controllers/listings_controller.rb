class ListingsController < ApplicationController

	def index
		@listings = Listing.all
	end

	def show
		@listing = Listing.find(params[:id])
	end

	def create
		@listing = Listing.new(listing_params)
		@listing.save
		redirect_to @listing
	end

	def search
		if params[:start_date] != "" && params[:start_date] != nil
			render json: Listing.where("start_date >= ?", Date.parse(params[:start_date])).to_json
		elsif params[:end_date]!= "" && params[:end_date] != nil
			render json: Listing.where("end_date <= ?", Date.parse(params[:end_date])).to_json
		elsif params[:price]!= "" && params[:price] != nil
			render json: Listing.where("price <= ?", params[:price].to_i).to_json
		elsif params[:location]!= "" && params[:location] != nil
			render json: Listing.where("location == ?", params[:location]).to_json
		end
	end


	private
		def listing_params
			params.require(:listing).permit(:user_id,:car_id,:description,:price,:start_date,:end_date)
		end
end