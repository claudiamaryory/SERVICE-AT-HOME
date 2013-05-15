class BarriosController < ApplicationController

  def index
    @barrios = Barrio.all
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @barrios }
    end
  end

  def show
      @barrio = Barrio.find(params[:id])
  end

  def new
      @barrio = Barrio.new
  end

  def edit
      @barrio = Barrio.find(params[:id])
  end

  def create
      @barrio = Barrio.new(params[:barrio])
      render :action => :new unless @barrio.save
  end

  def update
      @barrio = Barrio.find(params[:id])
      render :action => :edit unless @barrio.update_attributes(params[:barrio])
  end

  def destroy
      @barrio = Barrio.find(params[:id])
      @barrio.destroy
  end
  
end
