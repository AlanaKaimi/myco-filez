class MycoFilesController < ApplicationController
  def index
    @myco_files = MycoFile.all
  end

  def show
    @myco_file = MycoFile.find(params[:id])
  end

  def new
    @myco_file = MycoFile.new
  end

  def create
    @myco_file = MycoFile.new(myco_file_params)

    if @myco_file.save
      redirect_to @myco_file
    else
      render :new
    end
  end

  private
    def myco_file_params
      params.require(:myco_file).permit(:name, :shape, :color, :gills, :pores, :edibility, :season, :location)
    end

end
