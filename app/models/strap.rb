class Strap < ApplicationRecord
  belongs_to :guitar
  belongs_to :user
end
