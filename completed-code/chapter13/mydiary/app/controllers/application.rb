class ApplicationController < ActionController::Base
  before_filter :count_requests_in_session
  
  def count_requests_in_session
    session[:requests] ||= 0
    session[:requests] += 1
  end
end