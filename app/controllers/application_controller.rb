class ApplicationController < ActionController::API
  before_action :authorize_request, except: :create

  def not_found
    render json: { error: 'not_found' }
  end

  def authorize_request
    header = request.headers['Authorization']
    header = header.split(' ').last if header
    @decoded = JsonWebToken.decode(header) rescue unauthorized_request
    @current_user = Recruiter::Recruiter.find(@decoded[:recruiter_id]) rescue unauthorized_request
  end

  def current_user
    header = request.headers['Authorization']
    header = header.split(' ').last if header
    @decoded = JsonWebToken.decode(header) rescue unauthorized_request
    @current_user = Recruiter::Recruiter.find(@decoded[:recruiter_id]) rescue unauthorized_request
  end

  private
    def unauthorized_request
      render json: "unauthorized" , status: :unauthorized
    end
end