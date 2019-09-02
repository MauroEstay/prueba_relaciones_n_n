class Task < ApplicationRecord
  has_many :usertasks
  has_many :users, through: :usertasks
end
