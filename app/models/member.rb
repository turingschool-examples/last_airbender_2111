class Member < ApplicationRecord
  validates_presence_of :name
  validates_presence_of :allies
  validates_presence_of :enemies
  validates_presence_of :affiliations
end