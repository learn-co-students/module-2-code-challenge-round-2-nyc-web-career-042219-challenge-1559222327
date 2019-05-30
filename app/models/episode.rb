class Episode < ApplicationRecord


  has_many :guests, through: :epiguests

end
