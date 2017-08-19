class DocumentsController < ApplicationController
  def new

  end


def show
  @document = Document.find(params[:id])
end


def index
  @documents = Document.all
end
def guardar
    #render plain: params[:dato].inspect
    @v=JSON.parse(params[:dato])

end


  def create
      #render plain: params[:document].inspect
      @document = Document.new(document_params)

  @document.save
  redirect_to @document
  end
  private
  def document_params
    params.require(:document).permit(:title, :text,:cedula,:dato1)
  end
end
