class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  include DeviseWhitelist
<<<<<<< HEAD
  include CurrentUserConcern
  
  def current_user
    super || OpenStruct.new(name: "Guest User", first_name: "Guest", last_name: "User", email: "guest@example.com")
=======

  before_action :set_source

  def set_source
    session[:source] = params[:q] if params[:q]
>>>>>>> cfc6d4945ae28bdb57350e446504d030eeb5eed0
  end
end