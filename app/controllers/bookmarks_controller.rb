class BookmarksController < ApplicationController
  def new
    @bookmark = Bookmark.new
    @list = List.find(params[:list_id])
  end

  def create
    @list = List.find(params[:list_id])
    @bookmark = Bookmark.new(params_bookmark)
  end

  private

  def params_bookmark
    params.require(:bookmarks).permit(:movie_id)
  end
end
