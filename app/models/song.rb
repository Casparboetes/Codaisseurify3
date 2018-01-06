class Song < ApplicationRecord
  belongs_to :artist
  validates :title, presence: true
  validates :title, uniqueness: true

  def self.order_by_title
    order(:title)
  end
end
