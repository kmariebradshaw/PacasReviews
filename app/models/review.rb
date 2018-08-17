require 'csv'


class Review < ApplicationRecord
  belongs_to :product
  validates :rating, :inclusion => { :in => 1..5 }

  def self.to_csv
    CSV.generate do |csv|
      csv << %w{ rating product review } 
      all.each do |review|
        csv << [review.rating, review.product.title, review.text  ]
      end
    end
  end
end
