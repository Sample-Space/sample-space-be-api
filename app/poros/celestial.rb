class CelestialPoro
  attr_reader :name, :thumbnail, :description

  def initialize(name, thumbnail, desc)
    @name = name
    @thumbnail = thumbnail
    @description = desc
  end
end
