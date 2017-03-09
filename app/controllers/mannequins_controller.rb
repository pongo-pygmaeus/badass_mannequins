class MannequinsController < ApplicationController

  def not_restful
    "HIIIIIIII"
  end

  def index
    @mannequins = Mannequin.all
  end

  def show
    @mannequin = Mannequin.find_by(id: params[:id])
  end

  def new
    @mannequin = Mannequin.new
  end

  def edit
    @mannequin = Mannequin.find_by(id: params[:id])
  end

  def create
  end

  def update
    @mannequin = Mannequin.find_by(id: params[:id])

    if @mannequin.update(mannequin_params)
      redirect_to @mannequin
    else
      render 'edit'
    end
  end

  def destroy
  end

private
  
  def mannequin_params
    params.require(:mannequin).permit(:name, :height)
  end

end