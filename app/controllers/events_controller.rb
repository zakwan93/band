class EventsController < ApplicationController

	def index
  		@events = Event.all
	end


	def new
		@events = Event.new
	end

	def show
		@events = Event.find(params[:id])
	end

	def create
		@events= Event.create(band_id: params[:event][:band_id],venue_id: params[:event][:venue_id],event_date: params[:event][:event_date], alcohol_served: params[:event][:alcohol_served])
		redirect_to events_path
	end

	def edit
		@events = Event.find(params[:id])
	end

	def update
		@events = Event.find(params[:id])
		@events.update(band_id: params[:event][:band_id],venue_id: params[:event][:venue_id],event_date: params[:event][:event_date], alcohol_served: params[:event][:alcohol_served])
   		redirect_to events_path
   	end

   	def destroy
   		@events = Event.find(params[:id])
   		@events.delete
   		redirect_to events_path
   	end
end
