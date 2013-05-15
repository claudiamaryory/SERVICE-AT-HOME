class ReprogramacionesController < ApplicationController
  # GET /reprogramaciones
  # GET /reprogramaciones.json
  def index
    @reprogramaciones = Reprogramacion.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @reprogramaciones }
    end
  end

  # GET /reprogramaciones/1
  # GET /reprogramaciones/1.json
  def show
    @reprogramacion = Reprogramacion.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @reprogramacion }
    end
  end

  # GET /reprogramaciones/new
  # GET /reprogramaciones/new.json
  def new
    @reprogramacion = Reprogramacion.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @reprogramacion }
    end
  end

  # GET /reprogramaciones/1/edit
  def edit
    @reprogramacion = Reprogramacion.find(params[:id])
  end

  # POST /reprogramaciones
  # POST /reprogramaciones.json
  def create
    @reprogramacion = Reprogramacion.new(params[:reprogramacion])

    respond_to do |format|
      if @reprogramacion.save
        format.html { redirect_to @reprogramacion, notice: 'Reprogramacion was successfully created.' }
        format.json { render json: @reprogramacion, status: :created, location: @reprogramacion }
      else
        format.html { render action: "new" }
        format.json { render json: @reprogramacion.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /reprogramaciones/1
  # PUT /reprogramaciones/1.json
  def update
    @reprogramacion = Reprogramacion.find(params[:id])

    respond_to do |format|
      if @reprogramacion.update_attributes(params[:reprogramacion])
        format.html { redirect_to @reprogramacion, notice: 'Reprogramacion was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @reprogramacion.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /reprogramaciones/1
  # DELETE /reprogramaciones/1.json
  def destroy
    @reprogramacion = Reprogramacion.find(params[:id])
    @reprogramacion.destroy

    respond_to do |format|
      format.html { redirect_to reprogramaciones_url }
      format.json { head :no_content }
    end
  end
end
