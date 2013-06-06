class Cat < ActiveRecord::Base
  attr_accessible :age, :birth_date, :color, :name, :sex
  validates :age, :birth_date, :color, :name, :sex, presence: true
  validates :color, inclusion: { in: %w(brown red black calico orange striped),
    message: "%{value} is not a valid color"
  }
  has_many :cat_rental_requests, dependent: :destroy


end