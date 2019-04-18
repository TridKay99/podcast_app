class EpisodeController < ApplicationController
  def create
    @podcast = Podcast.find(params[:id])
    @episode = @podcast.episode.create(episode_params)
    redirect_to podcast_path(podcast.id)
  end

  private
  def episode_params
    params.permit(:title, :show_notes, :mp3_file)
  end
end
