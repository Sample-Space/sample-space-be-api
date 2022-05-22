class KitObject
  include Presignable
  attr_reader :name, :id, :elements, :groove_url

  def initialize(kit, samples)
    @name = kit.name
    @id = kit.id
    @elements = samples
    @groove_url = get_url(kit.groove_file)
  end
end
