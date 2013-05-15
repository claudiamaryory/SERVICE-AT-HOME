class CalificacionesServiciosController < ApplicationController
  # GET /calificaciones_servicios
  # GET /calificaciones_servicios.json
  def index
    @calificaciones_servicios = CalificacionServicio.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @calificaciones_servicios }
    end
  end

  # GET /calificaciones_servicios/1
  # GET /calificaciones_servicios/1.json
  def show
    @calificacion_servicio = CalificacionServicio.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @calificacion_servicio }
    end
  end

  # GET /calificaciones_servicios/new
  # GET /calificaciones_servicios/new.json
  def new
    @calificacion_servicio = CalificacionServicio.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @calificacion_servicio }
    end
  end

  # GET /calificaciones_servicios/1/edit
  def edit
    @calificacion_servicio = CalificacionServicio.find(params[:id])
  end

  # POST /calificaciones_servicios
  # POST /calificaciones_servicios.json
  def create
    @calificacion_servicio = CalificacionServicio.new(params[:calificacion_servicio])

    respond_to do |format|
      if @calificacion_servicio.save
        format.html { redirect_to @calificacion_servicio, notice: 'Calificacion servicio was successfully created.' }
        format.json { render json: @calificacion_servicio, status: :created, location: @calificacion_servicio }
      else
        format.html { render action: "new" }
        format.json { render json: @calificacion_servicio.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /calificaciones_servicios/1
  # PUT /calificaciones_servicios/1.json
  def update
    @calificacion_servicio = CalificacionServicio.find(params[:id])

    respond_to do |format|
      if @calificacion_servicio.update_attributes(params[:calificacion_servicio])
        format.html { redirect_to @calificacion_servicio, notice: 'Calificacion servicio was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @calificacion_servicio.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /calificaciones_servicios/1
  # DELETE /calificaciones_servicios/1.json
  def destroy
    @calificacion_servicio = CalificacionServicio.find(params[:id])
    @calificacion_servicio.destroy

    respond_to do |format|
      format.html { redirect_to calificaciones_servicios_url }
      format.json { head :no_content }
    end
  end
end
