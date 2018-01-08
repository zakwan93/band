class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception


  def index
  		@venues = Venue.all
  		@bands = Band.all
  		@events = Event.all
	end

end
