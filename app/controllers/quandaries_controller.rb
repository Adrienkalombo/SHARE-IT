class QuandariesController < ApplicationController
  before_action :set_quandary, only: [:show, :edit, :update, :destroy]

  # GET /quandaries
  # GET /quandaries.json
  def index
    @quandaries = Quandary.all
  end

  # GET /quandaries/1
  # GET /quandaries/1.json
  def show
  end

  # GET /quandaries/new
  def new
    @quandary = Quandary.new
  end

  # GET /quandaries/1/edit
  def edit
  end

  # POST /quandaries
  # POST /quandaries.json
  def create
    @quandary = Quandary.new(quandary_params)

    respond_to do |format|
      if @quandary.save
        format.html { redirect_to @quandary, notice: 'Quandary was successfully created.' }
        format.json { render :show, status: :created, location: @quandary }
      else
        format.html { render :new }
        format.json { render json: @quandary.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /quandaries/1
  # PATCH/PUT /quandaries/1.json
  def update
    respond_to do |format|
      if @quandary.update(quandary_params)
        format.html { redirect_to @quandary, notice: 'Quandary was successfully updated.' }
        format.json { render :show, status: :ok, location: @quandary }
      else
        format.html { render :edit }
        format.json { render json: @quandary.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /quandaries/1
  # DELETE /quandaries/1.json
  def destroy
    @quandary.destroy
    respond_to do |format|
      format.html { redirect_to quandaries_url, notice: 'Quandary was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_quandary
      @quandary = Quandary.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def quandary_params
      params.require(:quandary).permit(:title, :description, :rating)
    end
end
