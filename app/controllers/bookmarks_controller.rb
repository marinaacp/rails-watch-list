class BookmarksController < ApplicationController
  before_action :set_bookmark, only: %i[destroy]

  def new
    @bookmark = Bookmark.new
    #@lists = List.find(params[:list_id])
  end

  def create
    @bookmark = Bookmark.new(bookmark_params)
    #@list = List.find(params[:list_id])
    @bookmark.list = @list
    if @bookmark.save
      redirect_to @list
    else
      render :new
    end
  end

  def destroy
    @bookmark.destroy
    redirect_to bookmarks_path
  end

  private

  def bookmark_params
    params.require(:bookmark).permit(:comment)
  end

  def set_bookmark
    @bookmark = Bookmark.find(params[:id, :movie_id])
  end
end

comment
