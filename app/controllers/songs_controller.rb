class SongsController < ApplicationController
  before_action :set_artist
  before_action :set_song, only: :destroy

def new
  @song = Song.new
end

def create
  @song = Song.new(song_params)

  if @song.save
    redirect_to @artist_path
  else
    render 'new'
  end
end




  private

  def song_params
    params.require(:song).permit(:title)
  end

  def set_artist
    @artist = Artist.find_by_id(params[:id])
  end

  def set_song
   @song = Song.find_by_id(params[:id])
  end


end
