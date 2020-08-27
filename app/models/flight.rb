class Flight < ApplicationRecord
  belongs_to :start, class: "Airport", foreign_key: :start_id
  belongs_to :end, class: "Airport", foreign_key: :end_id
end
