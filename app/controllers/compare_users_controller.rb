class CompareUsersController < ApplicationController
  skip_after_action :verify_authorized
  skip_after_action :verify_policy_scoped
  
  def index
    render json: current_user.id
  end
end
