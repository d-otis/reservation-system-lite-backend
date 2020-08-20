class ItemSerializer
  include FastJsonapi::ObjectSerializer
  attributes :title, :description, :serial_number, :is_available
end
