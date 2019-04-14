class Group < ApplicationRecord
  has_many :books
  has_many :presentations
  has_many :methodical_materials
  has_many :homeworks
  has_many :photos
  has_many :videos
end
