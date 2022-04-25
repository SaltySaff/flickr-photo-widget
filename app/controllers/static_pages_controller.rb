class StaticPagesController < ApplicationController
  def index
    @flickr = Flickr.new
  end

  def show
    @flickr = Flickr.new
    @photofeed = @flickr.people.getPhotos(:user_id => params[:id])
  end
end
