class Flat < ApplicationRecord
#   how do we differentiate between belonging to flat owner or renter as both are users?
  belongs_to :user 
end
