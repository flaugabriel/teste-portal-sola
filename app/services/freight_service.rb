# frozen_string_literal: true

class FreightService
  def self.calculation_cubage(uf, generator_id)
    freight_tips = {}
    generator = PowerGenerator.find(generator_id.to_i)
    freight_finds = Freight.where(state: uf).select(:weight_max, :weight_min, :cost)
    if generator.present? && freight_finds.present?
      # Comprimento x Largura x Altura x Fator cubagem (300)
      weight_cubage = generator.lenght * generator.width * generator.height * 300
      freight_finds.each do |freight|
        unless freight.weight_min <= weight_cubage && freight.weight_max >= weight_cubage
          next
        end

        freight_tips = {
          weight_max: freight.weight_max,
          weight_min: freight.weight_min,
          cost: freight.cost,
          cubage: weight_cubage
        }
      end
      freight_tips
    else
      freight_tips = { status: 401 }
    end
  end
end
