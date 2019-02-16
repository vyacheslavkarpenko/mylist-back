class BestsController < ApplicationController
  before_action :set_best, only: [:show, :edit, :update, :destroy]

  # GET /bests
  # GET /bests.json
  def index
    @bests = Best.all
  end

  # GET /bests/1
  # GET /bests/1.json
  def show
  end

  # GET /bests/new
  def new
    @best = Best.new
  end

  # GET /bests/1/edit
  def edit
  end

  # POST /bests
  # POST /bests.json
  def create
    @best = Best.new(best_params)

    respond_to do |format|
      if @best.save
        format.html { redirect_to @best, notice: 'Best was successfully created.' }
        format.json { render :show, status: :created, location: @best }
      else
        format.html { render :new }
        format.json { render json: @best.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /bests/1
  # PATCH/PUT /bests/1.json
  def update
    respond_to do |format|
      if @best.update(best_params)
        format.html { redirect_to @best, notice: 'Best was successfully updated.' }
        format.json { render :show, status: :ok, location: @best }
      else
        format.html { render :edit }
        format.json { render json: @best.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bests/1
  # DELETE /bests/1.json
  def destroy
    @best.destroy
    respond_to do |format|
      format.html { redirect_to bests_url, notice: 'Best was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_best
      @best = Best.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def best_params
      params.require(:best).permit(:best)
    end
end
