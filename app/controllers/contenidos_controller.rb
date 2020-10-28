class ContenidosController < ApplicationController
	def index
		  $tema = Tema.find(params['id'])
  		@lista=Contenido.where(["tema_id = ?", params['id']])
  end

  def new
    @item=Contenido.new
    if($tema)
      @item.tema_id = $tema.id
      @temas = Tema.where(["eliminado = ? AND asignatura_id = ?", 0, $tema.asignatura_id])
    end
  end

  def create
    item=Contenido.new
    item.id=params['contenido']['id']
    item.descripcion=params['contenido']['descripcion']
    item.tema_id = params['contenido']['tema_id']
    item.save
    redirect_to temas_contenidos_path($tema || item.tema_id)	
  end

  def edit
    @item = Contenido.find(params['id'])
    @temas = Tema.where(["eliminado = ? AND asignatura_id = ?", 0, @item.tema.asignatura_id])
  end

  def update
    item=Contenido.find(params['contenido']['id'])
    item.descripcion=params['contenido']['descripcion']
    item.tema_id = params['contenido']['tema_id']
    item.save
    redirect_to temas_contenidos_path($tema || item.tema_id)	
  end

  def destroy
    item=Contenido.find(params['id'])
    item.destroy 
    redirect_to temas_contenidos_path(item.tema_id)
  end
end
