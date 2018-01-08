class BandsController < ApplicationController

	respond_to? :js, only: :create

	def index
  		@bands = Band.all
	end

	def new
		@bands = Band.new
	end

	def show
		@bands = Band.find(params[:id])
	end

	def create
		if Band.exists?(:name => params[:band][:name])
			@message = "Band exist......"
			redirect_to bands_path	
		else
			@bands= Band.create(name: params[:band][:name], genre: params[:band][:genre], explicit_lyrics: params[:band][:explicit_lyrics])
			redirect_to bands_path
		end
	end

	def edit
		@bands = Band.find(params[:id])
	end

	def update
		@bands = Band.find(params[:id])
		@bands.update(name: params[:name], genre: params[:genre], explicit_lyrics: params[:explicit_lyrics])
   		redirect_to bands_path
   	end

   	def destroy
   		@bands = Band.find(params[:id])
   		@bands.delete
   		redirect_to bands_path
   	end

end
