class Facility < ApplicationRecord
	has_many :facility_images, dependent: :destroy
end