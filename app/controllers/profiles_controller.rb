class ProfilesController < ApplicationController
  def index
    @profiles = Profile.all
  end

  def show
    @profiles = Profile.find(params[:id])
  end

  def edit
    @profiles = Profile.find(params[:id])
  end

  def update
    @profiles = Profile.find(params[:id])
    @profiles.update(params[:profiles])
  end
end
