class ReportarsController < ApplicationController
  before_action :set_reportar, only: [:show, :edit, :update, :destroy]

  # GET /reportars
  # GET /reportars.json
  def index
    @reportars = Reportar.all
  end

  # GET /reportars/1
  # GET /reportars/1.json
  def show
  end

  # GET /reportars/new
  def new
    @reportar = Reportar.new
  end

  # GET /reportars/1/edit
  def edit
  end

  # POST /reportars
  # POST /reportars.json
  def create
    @reportar = Reportar.new(reportar_params)

    respond_to do |format|
      if @reportar.save
        format.html { redirect_to @reportar, notice: 'Reportar was successfully created.' }
        format.json { render :show, status: :created, location: @reportar }
      else
        format.html { render :new }
        format.json { render json: @reportar.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /reportars/1
  # PATCH/PUT /reportars/1.json
  def update
    respond_to do |format|
      if @reportar.update(reportar_params)
        format.html { redirect_to @reportar, notice: 'Reportar was successfully updated.' }
        format.json { render :show, status: :ok, location: @reportar }
      else
        format.html { render :edit }
        format.json { render json: @reportar.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /reportars/1
  # DELETE /reportars/1.json
  def destroy
    @reportar.destroy
    respond_to do |format|
      format.html { redirect_to reportars_url, notice: 'Reportar was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_reportar
      @reportar = Reportar.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def reportar_params
      params.require(:reportar).permit(:fecha, :ubicacion, :obsrvacion, :imagen)
    end
end
