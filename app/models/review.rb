require 'csv'


class Review < ApplicationRecord
  belongs_to :product
  validates :rating, :inclusion => { :in => 1..5 }

  def self.to_csv
    CSV.generate do |csv|
      csv << %w{ first_name last_name id date rating text email } 
      all.each do |review|
        csv << [review.author_first, review.author_last, review.product.title, review.rating, review.text, review.author_email  ]
      end
    end
  end
end
