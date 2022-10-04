class ProfilesController < ApplicationController
  def index
    @profiles = Profile.all
  end

  # def create_profile
  #   Profile.create(user: self)
  # end

  # def create
  #   @profile = Profile.new(profile_params)
  #   @profile.user = current_user
  #   if profilet.save
  #     # redirect_to index_path_url
  #     redirect_to :controller => 'profiles', :action => 'index'
  #   else
  #     render :new
  #   end

  def show
    @profiles = Profile.find(params[:id])
  end

  def edit
    @profiles = Profile.find(params[:id])
  end

  def update
    @profiles = Profile.find(params[:id])
    @profiles.update(params[:profile])
  end

  # private

  # def profile_params
  #   params.require(:profile).permit(:batch_number, :fullname, :biography, :contact_information, :company, :location, :skills, :hobby)
  # end
end
