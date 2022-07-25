class Recruiter::RecruitersController < ApplicationController
  before_action :set_recruiter, only: %i[ show update destroy ]

  def index
    @recruiters = Recruiter::Recruiter.all
  end

  def show
  end

  def create
    @recruiter = Recruiter::Recruiter.new(recruiter_params)
    if  @recruiter.save
      render :show, status: :created, location:  @recruiter
    else
      render json: @recruiter.errors, status: :unprocessable_entity
    end
  end

  def update
    if  @recruiter.update(recruiter_params)
      render :show, status: :ok, location:  @recruiter
    else
      render json: @recruiter.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @recruiter.destroy
  end

  private
    def set_user
      @recruiter = Recruiter::Recruiter.find(params[:id])
    end

    def recruiter_params
      params.require(:recruiter).permit(:id, :name , :email, :password, :password_confirmation)
    end
end
