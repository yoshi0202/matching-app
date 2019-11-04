class FacilityController < ApplicationController
  def create
    binding.pry
    personal = {'name' => 'Yamada', 'old' => 28}
    facilities = Facility.new
    facilities.name = params[:facilityName]
    facilities.detail = params[:facilityDetail]
    if facilities.save 
      render :json => {'result' => 'OK'}
    else
      render :json => {'result' => 'NG'}
    end
  end
end
