class Brand < ApplicationRecord
  has_many :cpus
  validates :name, presence: true
end
