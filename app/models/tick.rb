class Tick < ApplicationRecord
  belongs_to :user

  paginates_per 25
end
