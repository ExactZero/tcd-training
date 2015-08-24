class VideosController < ApplicationController
before_action :require_user, only: [:index, :show]
  def index
    @videos = Video.all
  end 

  def show
    @video = Video.find(params[:id])
    @details = @video.details
  end

end
