class MycoFilesController < ApplicationController
  def index
    @myco_files = MycoFile.all
  end

  def show
    @myco_file = MycoFile.find(params[:id])
  end
end
