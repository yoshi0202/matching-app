class CreateFacilityImages < ActiveRecord::Migration[6.0]
  def change
    create_table :facility_images do |t|
      t.bigint :facility_id
      t.string :name

      t.timestamps
    end
  end
end
