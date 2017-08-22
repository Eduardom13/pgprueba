class DocumentsController < ApplicationController


  def new

  end


def show
  @document = Document.find(params[:id])
end


def index
  #@documents = Document.all
  @documents = Document.last(3)
  @tlast = Document.last
  @alerts = Alert.all
#   respond_to do |format|
#   format.html
#   format.json
# end

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
      #respond_to do |format|
      @document.save
      respond_to do |format|
      format.html
      format.js {render inline: "location.reload();"}
      format.json { render json: @document, status: :created, location: @document } 
    end

      # {"ecd":[1,0,0,0],"ecdm":["100",0,0,0],"ecdmm":["200",0,0,0],"ecda":["150",0,0,0],"ecc":[0,1,0,0],"ecdm2":[0,"54",0,0],"ecdmm2":[0,"100",0,0],"ecda2":[0,"60",0,0],"ecuv":[0,0,0,0,1,0,0,0],"ecdm3":[0,0,0,0,"32",0,0,0],"ecdmm3":[0,0,0,0,"60",0,0,0],"ecda3":[0,0,0,0,"40",0,0,0],"ed":[0,0,1,1,0,0,1,0]}

end
def galert
    v=JSON.parse(params[:dato])
    valjson="{"
    valjson+="\"ecda1\":"+"#{v['ecda'][0]},"
    valjson+="\"ecda2\":"+"#{v['ecda'][1]},"
    valjson+="\"ecda3\":"+"#{v['ecda'][2]},"
    valjson+="\"ecda4\":"+"#{v['ecda'][3]}"

    v['ecda2'].each_with_index do |t,i|
       valjson+=",\"ecca#{i+1}\":"+"#{t}"
    end
    v['ecda3'].each_with_index do |t,i|
       valjson+=",\"ecva#{i+1}\":"+"#{t}"
    end
    valjson+="}"
    render plain: valjson
    @djsn=JSON.parse(valjson)
     @alert = Alert.new(@djsn)
     @alert.save

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
