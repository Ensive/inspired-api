# class ApplicationController < ActionController::API
class ApplicationController < ActionController::Base
  # include ActionController::Serialization
  before_action :set_locale

  def set_locale
    I18n.locale = params[:locale] || I18n.default_locale
  end

  def default_url_options(options = {})
    { :locale => I18n.locale }
  end

  protect_from_forgery with: :null_session
end
