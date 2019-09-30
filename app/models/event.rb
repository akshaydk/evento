class Event < ApplicationRecord
  belongs_to :competition
  has_and_belongs_to_many :user
end
