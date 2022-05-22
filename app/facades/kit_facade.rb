class KitFacade

  def self.get_all_kits
    KitSerializer.all_kits
  end

  def self.get_kit(kit)
    samples = get_samples(kit)
    the_kit = KitObject.new(kit, samples)
    KitSerializer.kit_show(the_kit)
  end

  def self.get_samples(kit)
    {
      kick: SampleObject.new(kit[:kick]),
      snare: SampleObject.new(kit[:snare]),
      hh_closed: SampleObject.new(kit[:hh_closed]),
      hh_open: SampleObject.new(kit[:hh_open]),
      melody: SampleObject.new(kit[:melody]),
      texture: SampleObject.new(kit[:texture]),
      one_shot_1: SampleObject.new(kit[:one_shot_1]),
      one_shot_2: SampleObject.new(kit[:one_shot_2])
    }
end
