class ReservationSerializer
  include FastJsonapi::ObjectSerializer
  attributes :notes, :created_at
  has_many :items
end
