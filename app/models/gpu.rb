class Gpu < ApplicationRecord
    has_many :motherboard
    validates :name, presence: true
    attribute :name, :string
end
