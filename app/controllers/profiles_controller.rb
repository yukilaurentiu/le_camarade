class ProfilesController < ApplicationController
  def index
    @profile = policy_scope(Profile)
    # if params[:query].present?
    #   @profiles = Profile.where("fullname ILIKE ? OR skills ILIKE ?", "%#{params[:query]}%", "%#{params[:query]}%")
    if params[:query].present?
      sql_query = <<~SQL
        profiles.fullname ILIKE :query
        OR profiles.skills ILIKE :query
      SQL
      @profiles = Profile.where(sql_query, query: "%#{params[:query]}%")
    else
      @profiles = Profile.all
    end
  end

  def show
    @profile = Profile.find(params[:id])
    authorize @profile
  end

  def edit
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
