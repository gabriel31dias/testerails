class AuthenticationController < ApplicationController
  before_action :authorize_request, except: :login

  def login
    @recruiter = Recruiter::Recruiter.find_by(email: (params[:recruiter][:email]))
    if @recruiter&.authenticate(params[:recruiter][:password])
      token = JsonWebToken.encode(recruiter_id: @recruiter.id)
      time = Time.now + 15.minutes
      render json: { token: token, exp: time.strftime("%m-%d-%Y %H:%M:%S"), name: @recruiter.name }, status: :ok
    else
      render json: {error: 'unauthorized'}, status: :unauthorized
    end
  end

  private

  def login_params
    params.require(:recruiter).permit(:email, :password)
  end
end