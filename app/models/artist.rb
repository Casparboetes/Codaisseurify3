class Artist < ApplicationRecord
    validates :name, presence: true
    validates :name, uniqueness: true
    validates :image_url, length: { maximum: 255 }

  def self.order_by_name
    order(:name)
  end
end
