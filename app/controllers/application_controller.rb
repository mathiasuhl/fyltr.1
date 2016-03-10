class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_action :authenticate_user!

  rescue_from CanCan::AccessDenied do |_exception|
    redirect_to dashboards_index_path, flash: { error: 'Zugriff Verweigert' }
  end

  private

  def require_user_signed_in
    return unless user_signed_in?
    if request.env['HTTP_REFERER']
      fallback_redirect = :back
    elsif defined?(root_path)
      fallback_redirect = root_path
    else
      fallback_redirect = '/'
    end
    redirect_to fallback_redirect, flash: { error: 'Sie müssen eigeloggt sein, um diese Seite zu sehen.' }
  end
end
