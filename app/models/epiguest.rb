class Epiguest < ApplicationRecord

validates :rating, :inclusion => { :in => 0..5 }

belongs_to :episode
belongs_to :guest

end
