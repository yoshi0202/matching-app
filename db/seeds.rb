# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Facility
[
  ['テスト施設1', 'テスト施設の説明です',['P025146667_480.jpg']],
  ['テスト施設2', 'テスト施設の説明です',['1.jpg']],
  ['テスト施設3', 'テスト施設の説明です',['no-image.png']],
  ['テスト施設4', 'テスト施設の説明です',['Shoyu_ramen,_at_Kasukabe_Station_(2014.05.05)_2.jpg']],
  ['テスト施設5', 'テスト施設の説明です',['705647.jpeg']],
  ['テスト施設6', 'テスト施設の説明です',['00004690.jpg']],
].each do |name, detail, images|
  facility = Facility.create!(
    { name: name, detail: detail}
	)
	images.each do |image|
		facility.facility_images.create!(
			{ name: image}
		)
	end
end
