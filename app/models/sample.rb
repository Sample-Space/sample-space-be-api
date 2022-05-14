class Sample < ApplicationRecord
  validates :name, presence: true, uniqueness: true
  validates :source_name, presence: true
  validates :sound_url, presence: true
  validates :thumbnail_url, presence: true
  validates :description, presence: true
  validates :info_url, presence: true
end
