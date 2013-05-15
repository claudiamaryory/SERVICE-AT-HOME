class EvaluacionesController < ApplicationController
  # GET /evaluaciones
  # GET /evaluaciones.json
  def index
    @evaluaciones = Evaluacion.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @evaluaciones }
    end
  end

  # GET /evaluaciones/1
  # GET /evaluaciones/1.json
  def show
    @evaluacion = Evaluacion.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @evaluacion }
    end
  end

  # GET /evaluaciones/new
  # GET /evaluaciones/new.json
  def new
    @evaluacion = Evaluacion.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @evaluacion }
    end
  end

  # GET /evaluaciones/1/edit
  def edit
    @evaluacion = Evaluacion.find(params[:id])
  end

  # POST /evaluaciones
  # POST /evaluaciones.json
  def create
    @evaluacion = Evaluacion.new(params[:evaluacion])

    respond_to do |format|
      if @evaluacion.save
        format.html { redirect_to @evaluacion, notice: 'Evaluacion was successfully created.' }
        format.json { render json: @evaluacion, status: :created, location: @evaluacion }
      else
        format.html { render action: "new" }
        format.json { render json: @evaluacion.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /evaluaciones/1
  # PUT /evaluaciones/1.json
  def update
    @evaluacion = Evaluacion.find(params[:id])

    respond_to do |format|
      if @evaluacion.update_attributes(params[:evaluacion])
        format.html { redirect_to @evaluacion, notice: 'Evaluacion was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @evaluacion.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /evaluaciones/1
  # DELETE /evaluaciones/1.json
  def destroy
    @evaluacion = Evaluacion.find(params[:id])
    @evaluacion.destroy

    respond_to do |format|
      format.html { redirect_to evaluaciones_url }
      format.json { head :no_content }
    end
  end
end
