class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def after_sign_in_path_for(resource)

    if current_user.sign_in_count > 1
      skills_path
    else
      profile_path(current_user.profile.id)
    end
    # @profile = Profile.find(params[:id])
    # @profile.id = current_user.id
    # profile_path(@profile.id)
    # profile_path(current_user.id)
  end
end
