class KitObject
  include Presignable
  attr_reader :name, :id, :sequence, :bpm, :elements

  def initialize(kit, samples)
    @name = kit.name
    @id = kit.id
    @sequence = kit.sequence
    @bpm = kit.bpm
    @elements = samples
  end
end
