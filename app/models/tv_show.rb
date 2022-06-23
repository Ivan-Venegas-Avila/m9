class TvShow < ApplicationRecord
  has_many :genre_tv_shows
  has_many :genres, through: :genre_tv_shows
  has_many :episodes, dependent: :destroy
  belongs_to :nationality
  has_many :film_locations,dependent: :destroy, inverse_of: :tv_show
  accepts_nested_attributes_for :film_locations
  belongs_to :user
  validates :name, presence: true
  has_and_belongs_to_many :actors
end
