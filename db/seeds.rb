Item.destroy_all
Reservation.destroy_all

num_items = 5
num_res = 5

num_items.times do
  Item.create(
    title: Faker::Appliance.brand.upcase + " — " + Faker::Appliance.equipment,
    description: Faker::Lorem.paragraph(sentence_count: 5),
    serial_number: Faker::Device.serial,
    is_available: Faker::Boolean.boolean
  )
end

num_res.times do 
  Reservation.create(
    notes: Faker::Lorem.paragraph(sentence_count: 3),
    in_progress: Faker::Boolean.boolean,
    is_complete: Faker::Boolean.boolean,
  )
end

Reservation.all.each do |r|
  random_number = rand(1..3)
  items = []
  random_number.times do
    i = Item.create(
      title: Faker::Appliance.brand.upcase + " — " + Faker::Appliance.equipment,
      description: Faker::Lorem.paragraph(sentence_count: 5),
      serial_number: Faker::Device.serial,
      is_available: Faker::Boolean.boolean
    )
    items << i
  end
  r.items << items
end