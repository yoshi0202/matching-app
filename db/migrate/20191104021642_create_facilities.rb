class CreateFacilities < ActiveRecord::Migration[6.0]
  def change
    create_table :facilities do |t|
      t.string :name
      t.text :detail
      t.string :image_name

      t.timestamps
    end
  end
end
