class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :require_login

  def rest
    @rest = "ApplicationController.rest"
    current_user.id
  end
  helper_method :rest

  def current_user_job
    p 'current_user_job'
  end
  helper_method :current_user_job

  private

  def require_login
    redirect_to new_session_url unless session[:user_id]
  end

  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end
  helper_method :current_user

  def user_id
    @userid = current_user.id
  end
  helper_method :user_id

  def job_id
    if  params[:controller] == 'api/v1/jobs' && params[:action] == 'show'
      @job_id = params[:id]
    end
  end
  helper_method :job_id

  def parts_job_id
    if  params[:controller] == 'api/v1/parts' && params[:action] == 'index'
      @parts_job_id = params[:job_id]
    end
  end
  helper_method :parts_job_id

  def task_id
    if  params[:controller] == 'api/v1/tasks' && params[:action] == 'show'
      @task_comments = params[:id]
    end
  end
  helper_method :task_id
end
