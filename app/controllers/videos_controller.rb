class VideosController < ApplicationController
  
  def index
    if params[:search]
      @videos = Video.search(params[:search]).order("created_at DESC").paginate(:page => params[:page], :per_page => 15)
    else
      @videos = Video.order('created_at DESC').paginate(:page => params[:page], :per_page => 12)
    end
  end

  def new
    @video = Video.new
  end

  def show
    @video = Video.find(params[:id])
  end

  def destroy
    @video = Video.find(params[:id])
    @video.destroy

    redirect_to root_url
  end

  def create
    @video = Video.new(params[:video])
    if @video.save
      flash[:success] = 'Video added!'
      redirect_to root_url
    else
      render 'new'
    end
  end
end