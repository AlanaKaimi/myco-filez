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

  def edit
    @myco_file = MycoFile.find(params[:id])
  end

  def update
    @myco_file = MycoFile.find(params[:id])

    if @myco_file.update(myco_file_params)
      redirect_to @myco_file
    else
      render :edit
    end
  end

  def destroy
    @myco_file = MycoFile.find(params[:id])
    @myco_file.destroy

    redirect_to root_path
  end

  private
    def myco_file_params
      params.require(:myco_file).permit(:name, :shape, :color, :gills, :pores, :edibility, :season, :location, photos: [])
    end

end
