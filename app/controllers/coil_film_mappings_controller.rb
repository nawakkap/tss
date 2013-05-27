class CoilFilmMappingsController < ApplicationController
  # GET /coil_film_mappings
  # GET /coil_film_mappings.json
  def index
    @coil_film_mappings = CoilFilmMapping.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @coil_film_mappings }
    end
  end

  # GET /coil_film_mappings/1
  # GET /coil_film_mappings/1.json
  def show
    @coil_film_mapping = CoilFilmMapping.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @coil_film_mapping }
    end
  end

  # GET /coil_film_mappings/new
  # GET /coil_film_mappings/new.json
  def new
    @coil_film_mapping = CoilFilmMapping.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @coil_film_mapping }
    end
  end

  # GET /coil_film_mappings/1/edit
  def edit
    @coil_film_mapping = CoilFilmMapping.find(params[:id])
  end

  # POST /coil_film_mappings
  # POST /coil_film_mappings.json
  def create
    @coil_film_mapping = CoilFilmMapping.new(params[:coil_film_mapping])

    respond_to do |format|
      if @coil_film_mapping.save
        format.html { redirect_to @coil_film_mapping, notice: 'Coil film mapping was successfully created.' }
        format.json { render json: @coil_film_mapping, status: :created, location: @coil_film_mapping }
      else
        format.html { render action: "new" }
        format.json { render json: @coil_film_mapping.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /coil_film_mappings/1
  # PUT /coil_film_mappings/1.json
  def update
    @coil_film_mapping = CoilFilmMapping.find(params[:id])

    respond_to do |format|
      if @coil_film_mapping.update_attributes(params[:coil_film_mapping])
        format.html { redirect_to @coil_film_mapping, notice: 'Coil film mapping was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @coil_film_mapping.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /coil_film_mappings/1
  # DELETE /coil_film_mappings/1.json
  def destroy
    @coil_film_mapping = CoilFilmMapping.find(params[:id])
    @coil_film_mapping.destroy

    respond_to do |format|
      format.html { redirect_to coil_film_mappings_url }
      format.json { head :no_content }
    end
  end
end
