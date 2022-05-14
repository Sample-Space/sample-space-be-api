class Kit < ApplicationRecord
  validates :name, presence: true, uniqueness: true
  validates :kick, presence: true
  validates :snare, presence: true
  validates :hh_closed, presence: true
  validates :hh_open, presence: true
  validates :melody, presence: true
  validates :texture, presence: true
  validates :one_shot_1, presence: true
  validates :one_shot_2, presence: true
  validates :groove_url, presence: true
end
