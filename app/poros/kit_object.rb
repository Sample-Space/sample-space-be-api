class KitObject
  include Presignable
  attr_reader :name, :id, :sequence, :bpm, :elements, :groove_url

  def initialize(kit, samples)
    @name = kit.name
    @id = kit.id
    @sequence = kit.sequence
    @bpm = kit.bpm
    @elements = samples
    @groove_url = get_url(kit.groove_file)
  end
end
