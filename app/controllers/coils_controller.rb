class CoilsController < ApplicationController
  # GET /coils
  # GET /coils.json
  def index
    #@coils = Coil.past3month
    @coils = Coil.slitted_n_days(2)
    
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @coils }
    end
  end

  # GET /coils/1
  # GET /coils/1.json
  def show
    @coil = Coil.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @coil }
    end
  end

  # GET /coils/new
  # GET /coils/new.json
  def new
    @coil = Coil.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @coil }
    end
  end

  # GET /coils/1/edit
  def edit
    @coil = Coil.find(params[:id])
  end

  # POST /coils
  # POST /coils.json
  def create
    @coil = Coil.new(params[:coil])

    respond_to do |format|
      if @coil.save
        format.html { redirect_to @coil, notice: 'Coil was successfully created.' }
        format.json { render json: @coil, status: :created, location: @coil }
      else
        format.html { render action: "new" }
        format.json { render json: @coil.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /coils/1
  # PUT /coils/1.json
  def update
    @coil = Coil.find(params[:id])

    respond_to do |format|
      if @coil.update_attributes(params[:coil])
        format.html { redirect_to @coil, notice: 'Coil was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @coil.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /coils/1
  # DELETE /coils/1.json
  def destroy
    @coil = Coil.find(params[:id])
    @coil.destroy

    respond_to do |format|
      format.html { redirect_to coils_url }
      format.json { head :no_content }
    end
  end
end
