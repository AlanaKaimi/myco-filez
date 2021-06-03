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
    @myco_file = MycoFile.new(name: "...", shape: "...", color: "...", gills: 0, pores: 0, edibility: "...", season: "...", location: "...")

    if @myco_file.save
      redirect_to @myco_file
    else
      render :new
    end
  end

end
