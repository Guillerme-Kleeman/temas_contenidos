class TemasController < ApplicationController
  def index
    $asignatura = Asignatura.find(params['id'])
  	@lista=Tema.all()
  end

  def new
  	@item=Tema.new
    @item.tema_id = $asignatura.id
  end

  def create
    item=Tema.new
    item.id=params['tema']['id']
    item.descripcion=params['tema']['descripcion']
    item.asignatura_id = params['tema']['asignatura_id']
    item.save
    redirect_to temas_path	
  end

  def edit
    @item=Tema.find(params['id'])
  end

  def update
    item=Tema.find(params['tema']['id'])
    item.descripcion=params['tema']['descripcion']
    item.asignatura_id = params['tema']['asignatura_id']
    item.save
    redirect_to temas_path	
  end

  def destroy
    item=Tema.find(params['id'])
    item.destroy 
    redirect_to temas_path
  end
end
