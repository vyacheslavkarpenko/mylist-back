module Api
  module V1
    class SessionsController < ApplicationController
      before_action :require_login, except: %i[login create new recover_password]
      def new; end

      def create
        @user = User.find_by(email: params[:email])

        if @user && @user.authenticate(params[:password])
          session[:user_id] = @user.id
          # redirect_to root_path(session[:user_id]), notice: 'You logged in!' # old
          redirect_to user_jobs_path(uid), notice: 'You logged in!' # new
        else
          redirect_to new_session_path
        end
      end

      def logout
        reset_session
        redirect_to root_url
      end
    end
  end
end
