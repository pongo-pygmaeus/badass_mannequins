class WigsController < ApplicationController

  def index
    @mannequin = Mannequin.find_by_id(params[:mannequin_id])
    @wigs = @mannequin.wigs

    # p request

    respond_to do |format|
      format.js   {render json: @wigs}
      # format.js
      format.html
      format.json {render json: @wigs}
    end
  end

  # Do a linkto
  def show
    @wig = Wig.find(params[:id])
  end

end