# frozen_string_literal: true

class RecomendsService
  # algorithm that search elements by attributes
  def self.generator_recomends(data)
    response = []
    generator_finds = PowerGenerator.all.select(
      :id,
      :name,
      :description,
      :manufacturer,
      :structure_type,
      :price, :height,
      :width, :lenght,
      :weight,
      :kwp
    )
    generator_finds.each do |generato|
      response.push(generato.id) if generato.description.include?(data)
      response.push(generato.id.to_s) if generato.manufacturer.include?(data)
      if generato.structure_type.to_s.include?(data)
        response.push(generato.id.to_s)
      end
      response.push(generato.id.to_s) if generato.price.to_s.include?(data)
      response.push(generato.id.to_s) if generato.height.to_s.include?(data)
      response.push(generato.id.to_s) if generato.width.to_s.include?(data)
      response.push(generato.id.to_s) if generato.lenght.to_s.include?(data)
      response.push(generato.id.to_s) if generato.weight.to_s.include?(data)
      response.push(generato.id.to_s) if generato.kwp.to_s.include?(data)
    end
    if response.length == 0
      false
    else
      not_filters = PowerGenerator.where.not(id: response).pluck(:id)
      not_filters
    end
  end
end
