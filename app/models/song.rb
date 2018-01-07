class Song < ApplicationRecord
  belongs_to :artist
  validates :title, presence: true
  validates :title, uniqueness: true
  # validates :artist_id, presence: true

  def self.order_by_title
    order(:title)
  end
end
