class ComputerRam < ApplicationRecord
    belongs_to :computer
    belongs_to :ram

    validate :validate_max_ram_and_slots

    private
  
    def validate_max_ram_and_slots
      max_ram = computer.motherboard.max_ram
      max_ram_slots = computer.motherboard.max_ram_slots
      total_ram_count = computer.computer_rams.count
      total_ram_capacity = computer.computer_rams.size
  
      errors.add(:base, "Excedeu a quantidade máxima de slots de RAM") if total_ram_count > max_ram_slots
      errors.add(:base, "Excedeu a capacidade máxima de RAM") if total_ram_capacity > max_ram
    end
end
