class Motherboard < ApplicationRecord
        has_many :computers
        validates :name, :max_ram, :max_ram_slots, presence: true
        validates :integrated_graph, :amd_compatibility, :intel_compatibility, inclusion: { in: [true, false] }
end
