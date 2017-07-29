class Qkl < ApplicationRecord
has_many :votes,dependent: :destroy
end
