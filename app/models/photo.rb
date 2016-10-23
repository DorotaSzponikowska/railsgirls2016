class Photo < ActiveRecord::Base
  validates :url, :caption, presence: true
  validates :rating, numericality: { only_integer: true, greater_than: 0, less_than: 6}  
end
