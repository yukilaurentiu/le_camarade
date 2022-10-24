class EventsController < ApplicationController
  def index
    @events = Event.all.order("created_at DESC")
    @events = policy_scope(Event)
  end
  # def list
  #   @events = Event.all
  # end

  def new
    @event = Event.new
    authorize @event
  end

  def create
    @event = Event.new(event_params)
    @event.user = current_user
    authorize @event
    if @event.save
      # redirect_to index_path_url
      redirect_to event_path(@event)
    else
      render :new
    end
  end

  def show
    @event = Event.find(params[:id])
    @events = Event.all
    authorize @event
  end

  def edit
    @event = Event.find(params[:id])
    authorize @event
  end

  def update
    @event = Event.find(params[:id])
    authorize @event
    @event.update(event_params)
    redirect_to event_path(@event)
  end

  def destroy
    @event = Event.find(params[:id])
    authorize @event
    @event.destroy
    redirect_to events_path, status: :see_other
  end

  # def destroy
  #   Event.destroy(params[:id])
  #   redirect_to :controller => 'events', :action => 'index'
  # end

  private

  def event_params
    params.require(:event).permit(:event_name, :location, :start_time, :end_time)
  end
end
