class ShipmentsController < ApplicationController
	
	def index
		@shipments = Shipment.all
	end

	def show
		@shipment = Shipment.find_by_id(params[:id])
	end

	def new
		@shipment = Shipment.new
	end

	def create
		@shipment = Shipment.new(params[:shipment])

		if @shipment.save
			redirect_to shipment_path(@shipment)
		else
			render :new
		end
	end

end