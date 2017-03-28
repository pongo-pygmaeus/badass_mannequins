class WigsController < ApplicationController

  def index
    @mannequin = Mannequin.find_by_id(params[:mannequin_id])
    @wigs = @mannequin.wigs

    # For each format specified in the request, respond with a 
    # response rendered from <route name>.<format>.<template>
    # E.g.: A request to /wigs/index from a javascript program
    # in a rails project using erb files would run "render wigs/index.js.erb"
    # if a block parameter is not passed to the format.<format> line.
    # 
    # If a view file for a given format does not exist, the format.<format>
    # command must be passed a block to be performed in lieu of a default 
    # rendering.

    respond_to do |format|
      #From the 'link_to "Display Wigs (JS/AJAX)"' <a> tag
      format.js #{render json: @wigs} - replaces the "request.xhr?" check
                # in Sinatra
      #From the 'link_to "Display Wigs (HTML)"' <a> tag
      format.html 
      #From the 'link_to "Display Wigs (JSON)"' <a> tag
      format.json {render json: @wigs}
    end
  end

  # Do a linkto
  def show
    @wig = Wig.find(params[:id])
  end

end