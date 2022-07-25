class Recruiter::JobsController < ApplicationController
  before_action :set_job, only: %i[ show update destroy ]

  def index
    query = {}
    query['title_or_description_or_skills_cont'] = params['search']
    @jobs = Recruiter::Job.ransack(query).result
  end

  def show
  end

  def create
    @job = Recruiter::Job.new(job_params)

    if @job.save
      render :show, status: :created, location: @job
    else
      render json: @job.errors, status: :unprocessable_entity
    end
  end

  def update
    if @job.update(job_params)
      render :show, status: :ok, location: @job
    else
      render json: @job.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @job.destroy
  end

  private
    def set_job
      @job = Recruiter::Job.find(params[:id])
    end

    def job_params
      params.require(:job).permit(:title, :description, :start_date, :end_date, :status, :skills, :recruiter_id)
    end
end
