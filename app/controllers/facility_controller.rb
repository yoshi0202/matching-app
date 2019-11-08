class FacilityController < ApplicationController
  def index
    facilities = Facility.all.to_json(include: [:facility_images])
    render :json => {
      'facilities' => facilities,
    }
  end
  def create
    images = params[:facilityImages]
    public_path = 'public/facility_images/'
    facility = Facility.create!(
      "name" => params[:facilityName],
      "detail" => params[:facilityDetail],
    )
    if images.present?
      images.each do |image|
        facility.facility_images.create!(
          "name" => image.original_filename
        )
        output_path = Rails.root.join(public_path, image.original_filename)
        File.open(output_path, 'w+b') do |fp|
          fp.write  image.read
        end
      end
    else
      facility.facility_images.create!(
        "name" => "no-image.png"
      )
    end
    render :json => {'result' => 'OK'}
  end
  def destroy
    Facility.destroy(params[:facilityId])
    facilities = Facility.all.to_json(include: [:facility_images])
    render :json => {
      'facilities' => facilities,
    }
  end
end
