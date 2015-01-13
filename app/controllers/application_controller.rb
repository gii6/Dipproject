class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  private
  def only_for_admin
    unless current_user && current_user.admin?
      render :text=>"Доступ запрещен", :layout => 'application'
    end
  end
  def only_for_operator
    unless current_user && current_user.operator?
      render :text=>"Доступ запрещен", :layout => 'application'
    end
  end
  def for_admin_or_operator
    unless current_user.nil? && current_user.operator? && current_user.admin?
      render :text=>"Доступ запрещен", :layout => 'application'
    end
  end
end
