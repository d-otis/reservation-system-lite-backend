Item.destroy_all

num_items = 20

num_items.times do
  Item.create(
    title: Faker::Appliance.brand.upcase + " — " + Faker::Appliance.equipment,
    description: Faker::Lorem.paragraph(sentence_count: 5),
    serial_number: Faker::Device.serial,
    is_available: Faker::Boolean.boolean
  )
end