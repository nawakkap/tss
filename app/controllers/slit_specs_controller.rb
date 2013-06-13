class SlitSpecsController < ApplicationController
  # GET /slit_specs
  # GET /slit_specs.json
  def index
    @slit_specs = SlitSpec.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @slit_specs }
    end
  end

  # GET /slit_specs/1
  # GET /slit_specs/1.json
  def show
    @slit_spec = SlitSpec.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @slit_spec }
    end
  end

  # GET /slit_specs/new
  # GET /slit_specs/new.json
  def new
    @slit_spec = SlitSpec.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @slit_spec }
    end
  end

  # GET /slit_specs/1/edit
  def edit
    @slit_spec = SlitSpec.find(params[:id])
  end

  # POST /slit_specs
  # POST /slit_specs.json
  def create
    @slit_spec = SlitSpec.new(params[:slit_spec])

    respond_to do |format|
      if @slit_spec.save
        format.html { redirect_to @slit_spec, notice: 'Slit spec was successfully created.' }
        format.json { render json: @slit_spec, status: :created, location: @slit_spec }
      else
        format.html { render action: "new" }
        format.json { render json: @slit_spec.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /slit_specs/1
  # PUT /slit_specs/1.json
  def update
    @slit_spec = SlitSpec.find(params[:id])

    respond_to do |format|
      if @slit_spec.update_attributes(params[:slit_spec])
        format.html { redirect_to @slit_spec, notice: 'Slit spec was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @slit_spec.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /slit_specs/1
  # DELETE /slit_specs/1.json
  def destroy
    @slit_spec = SlitSpec.find(params[:id])
    @slit_spec.destroy

    respond_to do |format|
      format.html { redirect_to slit_specs_url }
      format.json { head :no_content }
    end
  end
end
