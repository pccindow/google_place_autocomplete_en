class AutocompletesController < ApplicationController
  before_action :set_autocomplete, only: [:show, :edit, :update, :destroy]

  # GET /autocompletes
  # GET /autocompletes.json
  def index
    @autocompletes = Autocomplete.all
  end

  # GET /autocompletes/1
  # GET /autocompletes/1.json
  def show
  end

  # GET /autocompletes/new
  def new
    @autocomplete = Autocomplete.new
  end

  # GET /autocompletes/1/edit
  def edit
  end

  # POST /autocompletes
  # POST /autocompletes.json
  def create
    @autocomplete = Autocomplete.new(autocomplete_params)

    respond_to do |format|
      if @autocomplete.save
        format.html { redirect_to @autocomplete, notice: 'Autocomplete was successfully created.' }
        format.json { render :show, status: :created, location: @autocomplete }
      else
        format.html { render :new }
        format.json { render json: @autocomplete.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /autocompletes/1
  # PATCH/PUT /autocompletes/1.json
  def update
    respond_to do |format|
      if @autocomplete.update(autocomplete_params)
        format.html { redirect_to @autocomplete, notice: 'Autocomplete was successfully updated.' }
        format.json { render :show, status: :ok, location: @autocomplete }
      else
        format.html { render :edit }
        format.json { render json: @autocomplete.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /autocompletes/1
  # DELETE /autocompletes/1.json
  def destroy
    @autocomplete.destroy
    respond_to do |format|
      format.html { redirect_to autocompletes_url, notice: 'Autocomplete was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_autocomplete
      @autocomplete = Autocomplete.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def autocomplete_params
      params.require(:autocomplete).permit(:address, :street_number, :locality, :route, :administrative_area_level_1, :country, :postal_code)
    end
end
