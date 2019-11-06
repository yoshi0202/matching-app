class FacilityController < ApplicationController
  def create
    facility = Facility.create!(
      "name" => params[:facilityName],
      "detail" => params[:facilityDetail],
    )
    params[:facilityImages].each do |image|
      facility.facility_images.create!(
        "name" => image.original_filename
      )
      # File.open(output_path, 'w+b') do |fp|
      #   fp.write  uploaded_file.read
      # end
    end
    # if facilities.save 
      render :json => {'result' => 'OK'}
    # else
      # render :json => {'result' => 'NG'}
    # end
  end
end
