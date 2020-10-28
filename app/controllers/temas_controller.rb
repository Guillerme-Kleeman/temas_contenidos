class TemasController < ApplicationController
  def index
    $asignatura = Asignatura.find(params['id'])
  	@lista=Tema.where(["eliminado = ? AND asignatura_id = ?", 0, params['id']])
  end

  def new
  	@item=Tema.new
    if $asignatura
      @item.asignatura_id = $asignatura.id
    end
  end

  def create
    item=Tema.new
    item.id=params['tema']['id']
    item.descripcion=params['tema']['descripcion']
    item.asignatura_id = params['tema']['asignatura_id']
    item.eliminado = 0
    item.save
    redirect_to asignaturas_temas_path(item.asignatura_id)	
  end

  def edit
    @item=Tema.find(params['id'])
  end

  def update
    item=Tema.find(params['tema']['id'])
    item.descripcion=params['tema']['descripcion']
    item.asignatura_id = params['tema']['asignatura_id']
    item.save
    redirect_to asignaturas_temas_path(item.asignatura_id)
  end

  def destroy
    item=Tema.find(params['id'])
    item.eliminado = 1
    item.save
    redirect_to asignaturas_temas_path(item.asignatura_id)
  end
end

