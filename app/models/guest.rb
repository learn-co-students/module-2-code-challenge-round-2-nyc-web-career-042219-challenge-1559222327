class Guest < ApplicationRecord

  has_many :episodes, through: :epiguests

end
