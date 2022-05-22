class SampleObject
  include Presignable
  attr_reader :name, :source_name, :sound_url, :thumbnail_url, :description, :info_url

  def initialize(sample_name)
    sample = Sample.find_by(name: sample_name)
    @name = sample.name
    @source_name = sample.source_name
    @description = sample.description
    @info_url = sample.info_url
    @sound_url = get_url(sample.filename)
    @thumbnail_url = get_url(sample.thumbnail_file)
  end
end
