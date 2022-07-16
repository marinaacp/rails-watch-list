class BookmarksController < ApplicationController
  before_action :set_bookmark, only: %i[show edit update destroy]

  def index
    @bookmarks = bookmark.all
  end

  def show; end

  def new
    @bookmark = Bookmark.new
  end

  def create
    @bookmark = Bookmark.new(bookmark_params)
    if @bookmark.save
      redirect_to bookmark_path(@bookmark)
    else
      render "new"
    end
  end

  def edit; end

  def update
    @bookmark.update(bookmark_params)
    # redirect_to bookmark_path(@bookmark)
    redirect_to @bookmark
  end

  def destroy
    @bookmark.destroy
    redirect_to bookmarks_path
  end

  private

  def bookmark_params
    params.require(:bookmark).permit(:name)
  end

  def set_bookmark
    @bookmark = bookmark.find(params[:id])
  end
end
