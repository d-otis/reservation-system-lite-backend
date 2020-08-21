class ReservationSerializer
  include FastJsonapi::ObjectSerializer
  attributes :notes, :in_progress, :is_complete, :created_at
  has_many :items
end
