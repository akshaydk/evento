class AgeGroup < ApplicationRecord
  has_and_belongs_to_many :disciplines
  has_and_belongs_to_many :events
end
