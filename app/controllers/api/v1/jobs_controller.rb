module Api
  module V1
    class JobsController < ApplicationController
      before_action :set_job, only: [:show, :edit, :update, :destroy]

      # GET /jobs
      # GET /jobs.json
      def index
        @jobs = Job.where(user_id: current_user)
      end

      # GET /jobs/1
      # GET /jobs/1.json
      def show
        
      end

      # GET /jobs/new
      def new
        # @job = Job.new
        @current_user = current_user
        @job = current_user.jobs.new
      end

      # GET /jobs/1/edit
      def edit
      end

      # POST /jobs
      # POST /jobs.json
      def create
        @current_user = current_user
        @job = current_user.jobs.new(job_params)

        respond_to do |format|
          if @job.save
            format.html { redirect_to @job, notice: 'Job was successfully created.' }
            format.json { render :show, status: :created, location: @job }
          else
            format.html { render :new }
            format.json { render json: @job.errors, status: :unprocessable_entity }
          end
        end
      end

      # PATCH/PUT /jobs/1
      # PATCH/PUT /jobs/1.json
      def update
        respond_to do |format|
          if @job.update(job_params)
            format.html { redirect_to @job, notice: 'Job was successfully updated.' }
            format.json { render :show, status: :ok, location: @job }
          else
            format.html { render :edit }
            format.json { render json: @job.errors, status: :unprocessable_entity }
          end
        end
      end

      # DELETE /jobs/1
      # DELETE /jobs/1.json
      def destroy
        @job.destroy
        respond_to do |format|
          format.html { redirect_to user_jobs_url(current_user), notice: 'Job was successfully destroyed.' }
          format.json { head :no_content }
        end
      end

      private
        # Use callbacks to share common setup or constraints between actions.
        def set_job
          @job = Job.find(params[:id])
        end

        # Never trust parameters from the scary internet, only allow the white list through.
        def job_params
          params.require(:job).permit(:name, :user_id)
        end
    end
  end
end
