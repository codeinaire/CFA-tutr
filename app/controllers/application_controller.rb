class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def after_sign_in_path_for(resource)

    if current_user.sign_in_count > 1
      profiles_path
    else
      edit_profile_path(current_user.profile.id)
    end
  end
end
