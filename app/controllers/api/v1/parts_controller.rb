module Api
  module V1
    class PartsController < ApplicationController
      before_action :set_part, only: %i[show edit update destroy]

      # GET /parts
      # GET /parts.json
      def index
        @parts = Part.where(job_id: params[:job_id])
        @job_id = params[:job_id]
      end

      # GET /parts/1
      # GET /parts/1.json
      def show
        @job_id = @part.job.id
      end

      # GET /parts/new
      def new
        @job = Job.find(params[:job_id])
        @part =[@job, @job.parts.build]
      end

      # GET /parts/1/edit
      def edit; end

      # POST /parts
      # POST /parts.json
      def create
        @part = Part.new(part_params.merge(job_id: params[:job_id].to_i))

        respond_to do |format|
          if @part.save
            format.html { redirect_to @part, notice: 'Part was successfully created.' }
            format.json { render :show, status: :created, location: @part }
          else
            format.html { render :new }
            format.json { render json: @part.errors, status: :unprocessable_entity }
          end
        end
      end

      # PATCH/PUT /parts/1
      # PATCH/PUT /parts/1.json
      def update
        respond_to do |format|
          if @part.update(part_params)
            format.html { redirect_to @part, notice: 'Part was successfully updated.' }
            format.json { render :show, status: :ok, location: @part }
          else
            format.html { render :edit }
            format.json { render json: @part.errors, status: :unprocessable_entity }
          end
        end
      end

      # DELETE /parts/1
      # DELETE /parts/1.json
      def destroy
        # binding.pry
        job_id = Part.find(params[:id]).job_id
        @part.destroy
        respond_to do |format|
          format.html { redirect_to job_parts_url(job_id), notice: 'Part was successfully destroyed.' }
          format.json { head :no_content }
        end
      end
      private
      # Use callbacks to share common setup or constraints between actions.
      def set_part
        @part = Part.find(params[:id])
      end

      # Never trust parameters from the scary internet, only allow the white list through.
      def part_params
        params.require(:part).permit(:name, :job_id).merge(user_id: current_user.id)
      end
    end
  end
end
