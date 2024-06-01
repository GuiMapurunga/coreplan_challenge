class Cpu < ApplicationRecord
    has_many :computer
    belongs_to :brand      
end
