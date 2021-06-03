class MycoFilesController < ApplicationController
  def index
    @myco_files = MycoFile.all
  end
end
