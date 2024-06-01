class Computer < ApplicationRecord
    belongs_to :client
    belongs_to :cpu
    belongs_to :motherboard
    belongs_to :gpu, optional: true
    has_many :computer_rams
  
    validates :client_id, presence: true
    validates :cpu_id, presence: true
    validates :motherboard_id, presence: true
    validates :gpu_id, presence:true, unless: -> { motherboard&.integrated_graph }
end