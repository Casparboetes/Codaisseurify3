class ArtistsController < ApplicationController
  before_action :set_artist,  only: [:destroy, :show, :create]

  def index
    @artists = Artist.all
    @songs = Song.all
  end

  def show
    @songs = @artist.songs
    @song = Song.new
    # @song.artist_id = @artist.id
  end

  def destroy
    @artist.destroy
    redirect_to root_path, notice: 'Artist Killed.. huh What? Dead already!'
  end

  private

  def set_artist
   @artist = Artist.find_by_id(params[:id])
  end
end
