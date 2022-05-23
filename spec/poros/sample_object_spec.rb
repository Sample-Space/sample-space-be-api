require 'rails_helper'

RSpec.describe SampleObject, type: :poro do

  before do
    @record = Sample.create(name: "Plasma Waves Voyager 1",
      filename: "texture_plasmawaves_chorus.mp3",
      source_name: "voyager_1",
      thumbnail_file: "voyager_1.jpeg",
      description: "Voyager 1's plasma wave instrument detected the vibrations of dense interstellar plasma, or ionized gas, from October to November 2012 and April to May 2013. This sound reproduces the amplitude and frequency of the plasma waves as 'heard' by Voyager 1.",
      info_url: "https://www.youtube.com/watch?v=vR_QP8Nl5bQ"
      )
  end

  it 'creates a sample object using the name from a database record' do
    object = SampleObject.new(@record.name)

    expect(object.name).to eq "Plasma Waves Voyager 1"
    expect(object.source_name).to eq "voyager_1"
    expect(object.description).to eq "Voyager 1's plasma wave instrument detected the vibrations of dense interstellar plasma, or ionized gas, from October to November 2012 and April to May 2013. This sound reproduces the amplitude and frequency of the plasma waves as 'heard' by Voyager 1."
    expect(object.info_url).to eq "https://www.youtube.com/watch?v=vR_QP8Nl5bQ"

    expect(object.sound_url).to be_a String
    expect(object.sound_url).to include "https://sampe-space.s3.amazonaws.com/#{@record.filename}"

    expect(object.thumbnail_url).to be_a String
    expect(object.thumbnail_url).to include "https://sampe-space.s3.amazonaws.com/#{@record.thumbnail_file}"
  end
end
