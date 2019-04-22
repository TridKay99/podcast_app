class PodcastController < ApplicationController 
  def index
  end

  def new
    @podcast = Podcast.new
  end

  def create
    @podcast = Podcast.new(podcast_params)

    if @podcast.save
      redirect_to @podcast
    else
      render 'new'
  end

  def show
    @podcast = Podcast.find(params[:id])
  end

  def edit 
  end

  def update
  end

  def delete
  end

  private
    def podcast_params
      params.permit(:name, :genre, :eplicit_content)
    end
  end
end