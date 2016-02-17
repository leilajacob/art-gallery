class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.


  protect_from_forgery with: :exception


 before_filter :categories

 def categories
  @categories = Category.all
 end

  def cart_items
    if user_signed_in?
      @cart_items = LineItem.where(customer_key: current_user.id.to_s)
    else
      @cart_items = LineItem.where(customer_key: remote_ip)
    end
  end

  def remote_ip
    if request.remote_ip == '127.0.0.1'

      "#{ENV['my_url']}"
    else
      request.remote_ip
    end 
  end 

  before_action :configure_permitted_parameters, if: :devise_controller?

    protected

  def configure_permitted_parameters

    devise_parameter_sanitizer.for(:sign_up) { |u| u.permit({ roles: [] }, :email, :password, :password_confirmation, :name, :address, :state, :city, :zip, :admin) }

    devise_parameter_sanitizer.for(:account_update) { |u| u.permit(:email, :password, :password_confirmation, :current_password, :name, :address, :state, :city, :zip, :admin) }

  end

  def line_items
    @line_items = LineItem.all
  end

end