Item.destroy_all
Reservation.destroy_all

num_items = 10
num_res = 15

num_items.times do
  Item.create(
    title: Faker::Appliance.brand.upcase + " — " + Faker::Appliance.equipment,
    description: Faker::Lorem.paragraph(sentence_count: 5),
    serial_number: Faker::Device.serial
  )
end

num_res.times do 
  Reservation.create(
    notes: Faker::Lorem.paragraph(sentence_count: 3)
  )
end

Reservation.all.each do |r|
  random_number = rand(2..5)
  items = []
  random_number.times do
    i = Item.create(
      title: Faker::Appliance.brand.upcase + " — " + Faker::Appliance.equipment,
      description: Faker::Lorem.paragraph(sentence_count: 5),
      serial_number: Faker::Device.serial
    )
    items << i
  end
  r.items << items
end