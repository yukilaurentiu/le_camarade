class ProfilesController < ApplicationController
  def index
    @profile = policy_scope(Profile)
    @profiles = Profile.all
  end

  def show
    @profile = Profile.find(params[:id])
    authorize @profile
  end

  def edit
    redirect_to root_path unless current_user
    @profile = Profile.find(params[:id])
    authorize @profile
  end

  def update
    @profile = Profile.find(params[:id])
    authorize @profile
    if @profile.update(profile_params)
      redirect_to profile_path(@profile), status: :see_other, notice: "You successfully updated your profile: #{@profile.fullname}"
    else
      render :new
    end
  end

  private

  def profile_params
    params.require(:profile).permit(:fullname, :batch_number, :biography, :contact_info, :company, :location, :skills, :hobby)
  end
end
