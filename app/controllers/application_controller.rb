class ApplicationController < ActionController::Base
  before_action :authenticate_user!

  def index
    @events = Event.all
  end
end
