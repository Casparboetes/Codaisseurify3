class ArtistsController < ApplicationController
  before_action :set_artist,  only:  [:show, :create, :new]

  def index
    @artists = Artist.all
    @songs = Song.all
  end

  def show
    @artist = Artist.find(params[:id])
    @songs = @artist.songs
    @song = Song.new
    @song.artist_id = @artist.id
  end

  def destroy
    @artist = Artist.find(params[:id])
    @artist.destroy
    redirect_to artists_path
  end

  private

  def set_artist
   @artist = Artist.find_by_id(params[:id])
  end
end
