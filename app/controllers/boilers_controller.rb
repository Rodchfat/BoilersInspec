class BoilersController < ApplicationController
  before_action :set_boiler, only: [:show, :edit, :update, :destroy]

  # GET /boilers
  # GET /boilers.json
  def index
    @facility = Facility.find(params[:facility_id])
    @boilers = @facility.boilers.all
    #@boilers = Boiler.all
  end

  # GET /boilers/1
  # GET /boilers/1.json
  def show
  end

  # GET /boilers/new
  def new
    @facility = Facility.find(params[:facility_id])
    @boilers = @facility.boilers.new
    #@boiler = Boiler.new
  end

  # GET /boilers/1/edit
  def edit
  end

  # POST /boilers
  # POST /boilers.json
  def create
    @facility = Facility.find(params[:facility_id])
    @boiler = @facility.boilers.create(boiler_params)

    respond_to do |format|
      if @boiler.save
        format.html { redirect_to facility_path(@facility), notice: 'Boiler was successfully created.' }
        #format.json { render :show, status: :created, location: @boiler }
      else
        format.html { render :new }
        #format.json { render json: @boiler.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /boilers/1
  # PATCH/PUT /boilers/1.json
  def update
    respond_to do |format|
      if @facility.boilers.update(boiler_params)
        format.html { redirect_to facility_path(@facility), notice: 'Boiler was successfully updated.' }
        format.json { render :show, status: :ok, location: @facility.boiler }
      else
        format.html { render :edit }
        format.json { render json: @facility.boiler.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /boilers/1
  # DELETE /boilers/1.json
  def destroy
        @boiler.destroy
    redirect_to facility_path(@facility)
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_boiler
      @facility = Facility.find(params[:facility_id])
      @boiler = @facility.boilers.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def boiler_params
      params.require(:boiler).permit(:make, :manfacture, :year, :facility_id)
    end
end
