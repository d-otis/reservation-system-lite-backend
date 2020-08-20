class CreateItems < ActiveRecord::Migration[6.0]
  def change
    create_table :items do |t|
      t.string :title
      t.text :description
      t.string :serial_number
      t.boolean :is_available

      t.timestamps
    end
  end
end
