class Song < ApplicationRecord
  def self.order_by_title
    order(:title)
  end
end
