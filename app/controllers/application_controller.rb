require "application_responder"

class ApplicationController < ActionController::Base
  self.responder = ApplicationResponder
  respond_to :html, :json

  include SentientController
  include Errors

  protect_from_forgery

  rescue_from CanCan::AccessDenied do |exception|
    render :text => "Access Denied!"
  end
end
