class KitSerializer

  def self.all_kits
    {
      "kits": Kit.all.pluck(:name)
    }
  end

  def self.kit_show(kit)
    {
      "name": kit.name,
      "id": kit.id,
      "elements": elements_hash(kit.elements),
      "groove_url": kit.groove_url
    }
  end

  def elements_hash(elements)
    hash = {}
    elements.each do |type, sample|
      hash[type] = {
        "name": sample.name,
        "source_name": sample.source_name,
        "sound_url": sample.sound_url,
        "thumbnail_url": sample.thumbnail_url,
        "description": sample.description,
        "info_url": sample.info_url
      }
    end
    return hash
  end
end
