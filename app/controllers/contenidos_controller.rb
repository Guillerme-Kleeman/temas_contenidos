class ContenidosController < ApplicationController
	def index
		  $tema = Tema.find(params['id'])
  		@lista=Contenido.where(["tema_id = ?", params['id']])
  end

  def new
    @item=Contenido.new
    if($tema)
      @item.tema_id = $tema.id
    end
  end

  def create
    item=Contenido.new
    item.id=params['contenido']['id']
    item.descripcion=params['contenido']['descripcion']
    item.tema_id = params['contenido']['tema_id']
    item.save
    redirect_to temas_contenidos_path($tema)	
  end

  def edit
    @item=Contenido.find(params['id'])
  end

  def update
    item=Contenido.find(params['contenido']['id'])
    item.descripcion=params['contenido']['descripcion']
    item.tema_id = params['contenido']['tema_id']
    item.save
    redirect_to temas_contenidos_path($tema)	
  end

  def destroy
    item=Contenido.find(params['id'])
    item.destroy 
    redirect_to temas_contenidos_path($tema)
  end
end
