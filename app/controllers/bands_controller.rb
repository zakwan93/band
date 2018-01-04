class BandsController < ApplicationController

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
		@bands= Band.create(name: params[:name], genre: params[:genre], explicit_lyrics: params[:explicit_lyrics])
		redirect_to bands_path
	end

end
