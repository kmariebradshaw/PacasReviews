class Review < ApplicationRecord
  belongs_to :product
  validates :rating, :inclusion => { :in => 1..5 }
end
