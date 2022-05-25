class KitSerializer

  def self.all_kits
    {
      "kits" => Kit.all.pluck(:name)
    }
  end

  def self.kit_show(kit)
    {
      "kit" => {
        "name"=> kit.name,
        "id"=> kit.id,
        "sequence"=> kit.sequence,
        "bpm"=> kit.bpm,
        "elements"=> elements_hash(kit.elements),
      }
    }
  end

  def self.elements_hash(elements)
    hash = {}
    elements.each do |type, sample|
      hash[type] = {
        "name" => sample.name,
        "source_name" => sample.source_name,
        "sound_url" => sample.sound_url,
        "thumbnail_url" => sample.thumbnail_url,
        "description" => sample.description,
        "info_url" => sample.info_url
      }
    end
    return hash
  end
end
