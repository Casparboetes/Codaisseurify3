class SongsController < ApplicationController
  before_action :set_artist
  before_action :set_song, only: [:show, :create, :destroy]

  def index
    @songs = Song.all
    @song = Song.new
  end

  def show
    @songs = Song.all
    @song = Song.find(params[:id])
  end

  # def create
  #   @song = Song.new(song_params)
  #   @song.artist_id = params[:artist_id]
  #   if @song.save
  #     redirect_to @song.artist, notice: "Song added"
  #   else
  #     redirect_to @song.artist
  #   end
  # end


  def create
    @song = Song.new(song_params)
    @song.artist_id = params[:artist_id]

      respond_to do |format|
        if @song.save
          format.html { redirect_to request.env["HTTP_REFERER"], notice: 'Song Added!' }
          format.json { render :show, status: :created, location: @songs }
        else
          format.html { redirect_to request.env["HTTP_REFERER"] }
          format.json { render json: @song.errors, status: :unprocessable_entity }
        end
      end
  end

  #
  # def destroy
  #   @song.destroy
  #   redirect_to @song.artist, notice: "Song removed."
  # end
  #
  def destroy
    @song.destroy

    respond_to do |format|
      format.html { redirect_to request.env["HTTP_REFERER"], notice: 'Song Removed.' }
      format.json { head :no_content }
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
