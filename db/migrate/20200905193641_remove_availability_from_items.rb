class RemoveAvailabilityFromItems < ActiveRecord::Migration[6.0]
  def change
    remove_column :items, :is_available
  end
end
