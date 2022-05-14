class KitSerializer

  def self.all_kits
    {
      "kits": Kit.all.pluck(:name)
    }
  end
end
