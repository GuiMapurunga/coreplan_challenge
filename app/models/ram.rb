class Ram < ApplicationRecord
    class Ram < ApplicationRecord
        has_many :computer_rams
        has_many :computers, through: :computer_rams
        validates :name, :capacity, presence: true
      end
end
