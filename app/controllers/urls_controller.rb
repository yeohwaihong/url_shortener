class UrlsController < ApplicationController
  def index
    @urls = Url.all
  end


  def show
    @url = Url.find(params[:id])
  end


  def new
    @url = Url.new
  end


  def create
    @url = Url.new(url_params)
    @url.shorten
    if @url.save
        redirect_to @url
    else
        render 'new'
    end
  end


  private
  def url_params
      params.require(:url).permit(:long_url)
  end

end
