class EventBookmarksController < ApplicationController

  def create
    @event = Event.find(params[:event_id])
    @user = User.find(params[:user])
    @event_bookmark = EventBookmark.new(event: @event, user: @user)
    if @event_bookmark.save
      # redirect_to :controller => 'events', :action => 'index'
      redirect_to request.referer, notice: "added"
    else
      render :new
    end
  end

  def destroy
    EventBookmark.destroy(params[:id])
    redirect_to event_bookmarks_path, status: :see_other
  end
end
