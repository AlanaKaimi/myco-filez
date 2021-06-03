class PhotosController < ApplicationController
  def create
    @myco_file = MycoFile.find(params[:myco_file_id])
    @photo = @myco_file.photos.create(photo_params)
    redirect_to myco_file_path(@myco_file)
  end

  private
    def photo_params
      params.require(:photo).permit(:image, :filename, :alt, :category)
    end
end
