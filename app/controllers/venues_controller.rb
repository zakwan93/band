class VenuesController < ApplicationController


	def index
  		@venues = Venue.all
  		@bands = Band.all
	end

	def new
		@venues = Venue.new
	end

	def show
		@venues = Venue.find(params[:id])
	end

	def create
		@venues = Venue.create(name: params[:venue][:name], city: params[:venue][:city], state: params[:venue][:state], family_friendly: params[:venue][:family_friendly])
		redirect_to venues_path
	end

	def edit
		@venues = Venue.find(params[:id])
	end

	def update
		@venues = Venue.find(params[:id])
		@venues.update(name: params[:name], city: params[:city], state: params[:state], family_friendly: params[:family_friendly])
   		redirect_to venues_path
   	end

   	def destroy
   		@venues = Venue.find(params[:id])
   		@venues.delete
   		redirect_to venues_path
   	end

end
