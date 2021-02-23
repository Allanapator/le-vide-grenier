class ApplicationController < ActionController::Base

  def default_url_options
    { host: ENV["https://le-vide-grenier.herokuapp.com/"] || "localhost:3000" }
  end
  include Pundit
  after_action :verify_authorized, except: :index, unless: :skip_pundit?
  after_action :verify_policy_scoped, only: :index, unless: :skip_pundit?

  skip_before_action :verify_authenticity_token

  before_action :authenticate_user!
  before_action :configure_permitted_parameters, if: :devise_controller?

  protect_from_forgery with: :exception

  include CurrentCart
  before_action :set_cart
  def configure_permitted_parameters
    # For additional fields in app/views/devise/registrations/new.html.erb
    devise_parameter_sanitizer.permit(:sign_up, keys: [:sexe, :city, :name, :description, :address, :postal, :birthday, :phone])
  end

  private

  def skip_pundit?
    devise_controller? || params[:controller] =~ /(^(rails_)?admin)|(^pages$)|(^payments$)/
  end
end
