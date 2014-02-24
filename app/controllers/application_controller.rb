class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  # def after_sign_in_path_for(resource)
  #   if current_user
  #     if resource.is_a?(User)
  # 	    '/user/index'
  #     elsif resource.is_a?(Professional)
  #       '/pro/index'
  #     else
  #     	super
  #     end
  #   else
  #     super
  #   end
  # end

  def signed_in_root_path(resource)
    if current_user
      if resource.is_a?(User)
        '/user/index'
      elsif resource.is_a?(Professional)
        '/pro/index'
      else
        super
      end
    else
      super
    end
  end

  def after_sign_out_path_for(resource_or_scope)
    after_sign_in_path_for(current_user)
  end

end
