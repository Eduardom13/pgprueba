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
  #http://localhost:3000/save?dato={%22lcc%22:[44.32,0,0,4.93],%22lcd%22:[0,0.01,295.64,0],%22lcv%22:[0,198.17,0,0,0,0,200.04,0],%22lvd%22:[1,0,1,0,0,0,0,0],%22fe%22:[2017,8,19,12,36,1],%22user%22:%22franklin%22,%22ids%22:%22232323%22}
    #render plain: params[:dato].inspect
    v=JSON.parse(params[:dato])
    valjson="{"
    valjson+="\"User\":"+"\"#{v['user']}\","
    valjson+="\"ids\":"+"\"#{v['ids']}\","
    valjson+="\"year\":"+"#{v['fe'][0]},"
    valjson+="\"month\":"+"#{v['fe'][1]},"
    valjson+="\"day\":"+"#{v['fe'][2]},"
    valjson+="\"hour\":"+"#{v['fe'][3]},"
    valjson+="\"min\":"+"#{v['fe'][4]},"
    valjson+="\"sec\":"+"#{v['fe'][5]}"
    v['lcc'].each_with_index do |t,i|
       valjson+=",\"lcc#{i+1}\":"+"#{t}"
    end
    v['lcd'].each_with_index do |t,i|
       valjson+=",\"lcd#{i+1}\":"+"#{t}"
    end
    v['lcv'].each_with_index do |t,i|
       valjson+=",\"lcv#{i+1}\":"+"#{t}"
    end
    v['lvd'].each_with_index do |t,i|
       valjson+=",\"lvd#{i+1}\":"+"#{t}"
    end
    valjson+="}"

      @djsn=JSON.parse(valjson)
      @document = Document.new(@djsn)
        @document.save

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
