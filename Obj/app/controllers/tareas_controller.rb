class TareasController < ApplicationController
  before_action :set_tarea, only: [:show, :edit, :update, :destroy]

  # GET /tareas
  # GET /tareas.json
  def index
    @tareas = Tarea.all
      respond_to do |format|
      format.html
      format.pdf do render  template: 'tareas/generate_pdf',page_size: 'Letter',zoom: 1,background: true,margin: {top: 0,bottom:0,left:0,right:0}
      end
      end
  end

  # GET /tareas/1
  # GET /tareas/1.json
  def show

  end

  # GET /tareas/new
  def new
    @tarea = Tarea.new
  end

  # GET /tareas/1/edit
  def edit
  end

  # POST /tareas
  # POST /tareas.json
  def create
    @tarea = Tarea.new(tarea_params)

    respond_to do |format|
      if @tarea.save
        format.html { redirect_to @tarea, notice: 'La Tarea ha sido eliminada correctamente.' }
        format.json { render :show, status: :created, location: @tarea }
      else
        format.html { render :new }
        format.json { render json: @tarea.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tareas/1
  # PATCH/PUT /tareas/1.json
  def update
    respond_to do |format|
      if @tarea.update(tarea_params)
        format.html { redirect_to @tarea, notice: 'La Tarea ha sido modificada correctamente.' }
        format.json { render :show, status: :ok, location: @tarea }
      else
        format.html { render :edit }
        format.json { render json: @tarea.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tareas/1
  # DELETE /tareas/1.json
  def destroy
    @tarea.destroy
    respond_to do |format|
      format.html { redirect_to tareas_url, notice: 'La Tarea ha sido eliminada correctamente.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tarea
      @tarea = Tarea.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def tarea_params
      params.require(:tarea).permit(:Nombre, :descripcion, :importancia, :fecha)
    end
end
