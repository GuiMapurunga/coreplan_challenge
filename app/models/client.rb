class Client < ApplicationRecord
    has_many :computers
    validates :name, presence: true
    validates :adress, presence: true
    validates :phone_number, presence: true, numericality: true
end