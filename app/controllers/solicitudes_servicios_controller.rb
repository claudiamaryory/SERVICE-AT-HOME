class SolicitudesServiciosController < ApplicationController
  # GET /solicitudes_servicios
  # GET /solicitudes_servicios.json
  def index
    @solicitudes_servicios = SolicitudServicio.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @solicitudes_servicios }
    end
  end

  # GET /solicitudes_servicios/1
  # GET /solicitudes_servicios/1.json
  def show
    @solicitud_servicio = SolicitudServicio.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @solicitud_servicio }
    end
  end

  # GET /solicitudes_servicios/new
  # GET /solicitudes_servicios/new.json
  def new
    @solicitud_servicio = SolicitudServicio.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @solicitud_servicio }
    end
  end

  # GET /solicitudes_servicios/1/edit
  def edit
    @solicitud_servicio = SolicitudServicio.find(params[:id])
  end

  # POST /solicitudes_servicios
  # POST /solicitudes_servicios.json
  def create
    @solicitud_servicio = SolicitudServicio.new(params[:solicitud_servicio])

    respond_to do |format|
      if @solicitud_servicio.save
        format.html { redirect_to @solicitud_servicio, notice: 'Solicitud servicio was successfully created.' }
        format.json { render json: @solicitud_servicio, status: :created, location: @solicitud_servicio }
      else
        format.html { render action: "new" }
        format.json { render json: @solicitud_servicio.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /solicitudes_servicios/1
  # PUT /solicitudes_servicios/1.json
  def update
    @solicitud_servicio = SolicitudServicio.find(params[:id])

    respond_to do |format|
      if @solicitud_servicio.update_attributes(params[:solicitud_servicio])
        format.html { redirect_to @solicitud_servicio, notice: 'Solicitud servicio was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @solicitud_servicio.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /solicitudes_servicios/1
  # DELETE /solicitudes_servicios/1.json
  def destroy
    @solicitud_servicio = SolicitudServicio.find(params[:id])
    @solicitud_servicio.destroy

    respond_to do |format|
      format.html { redirect_to solicitudes_servicios_url }
      format.json { head :no_content }
    end
  end
end
