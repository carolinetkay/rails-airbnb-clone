class FlatsController < ApplicationController
  def index
    @flats = Flat.all
  end

  def new
    @flat = Flat.new
  end

  def create
    @flat = Flat.new(flat_params)
    if @flat.after_save
      redirect_to flat_path(@flat)
    else
      render :new
    end
  end
end

private

def flat_params
  params.require(:flat).permit(:name, :description)
end 

