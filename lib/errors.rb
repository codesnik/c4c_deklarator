module Errors
  def self.included m
    return unless m < ActionController::Base
    m.helper_method :render_404, :render_422, :render_500
  end

  def render_403
    render_error(403)
  end

  def render_404
    render_error(404)
  end

  def render_422
    render_error(422)
  end

  def render_500
    render_error(500)
  end

  def render_error(status_code)
    render :file => "#{Rails.root}/public/#{status_code}.html", :status => status_code, :layout => false
  end
end