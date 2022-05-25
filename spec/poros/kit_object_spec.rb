require 'rails_helper'

RSpec.describe KitObject, type: :poro do

  before do
    @record = Kit.create(name: "Andromeda Pain",
      kick: "Star 808 Kepler KIC",
      snare: "Plasmasphere Polar",
      hh_closed: "Jupiter Sounds Cassini",
      hh_open: "Cold Helium",
      melody: "Plasma 9 Voyager 1",
      texture: "Whistler Mode 1 Parker",
      one_shot_1: "Whistler Waves EMFISIS",
      one_shot_2: "Langmuir Waves Parker",
      groove_file: "groove_stardust_passing_comet_temple_1.mp3",
      sequence: "[['C3', 'F#3'], ['D#3', 'E3'], ['D3'], ['D#3'], ['C#3', 'F#3'], ['D3', 'E3', 'F#3'], ['D#3'], ['D3'], ['C3'], ['D#3', 'F3'], ['D3', 'F3'], ['F3'], ['C#3', 'G3'], ['D#3', 'F#3'], ['D#3', 'F#3'], ['C3', 'D3']]",
      bpm: 180
    )
    Sample.create(name: "Star 808 Kepler KIC",
      filename: "kick_kepler_star_808.mp3",
      source_name: "kepler",
      thumbnail_file: "kepler.jpeg",
      description: "Kepler: Star KIC7671081B Light Curve Waves to Sound",
      info_url: "https://www.youtube.com/watch?v=vR_QP8Nl5bQ"
      )
    Sample.create(name: "Plasmasphere Polar",
      filename: "snare_plasmaspheric_hiss.mp3",
      source_name: "nasa_polar",
      thumbnail_file: "nasa_polar.jpeg",
      description: "Plasmaspheric hiss waves as heard by NASA’s Polar mission as it passed around Earth.",
      info_url: "https://www.youtube.com/watch?v=vR_QP8Nl5bQ"
      )
    Sample.create(name: "Jupiter Sounds Cassini",
      filename: "hat_closed_cassini_saturn_radio_emmisions.mp3",
      source_name: "cassini",
      thumbnail_file: "cassini.jpeg",
      description: "Hear intriguing radio waves that our Cassini spacecraft collected near Jupiter in January 2001.",
      info_url: "https://www.youtube.com/watch?v=vR_QP8Nl5bQ"
      )
    Sample.create(name: "Cold Helium",
      filename: "melody_ultra_cold_helium.mp3",
      source_name: "earth",
      thumbnail_file: "ultra_cold_helium_3.jpeg",
      description: "If you're squeamish, you may not want to listen to the strange whistle of ultra-cold liquid helium-3 that changes volume relative to the North Pole and Earth's rotation. When ultra-cold liquid helium-4 was squashed through an array of tiny apertures, a phenomenon occurred in which the helium-4 repeatedly sped up, slowed down and vibrated. This produced a 'quantum whistle' -- a whistling sound that went from high to low.",
      info_url: "https://www.youtube.com/watch?v=vR_QP8Nl5bQ"
      )
    Sample.create(name: "Plasma 9 Voyager 1",
      filename: "melody_voyage_plasma_9.mp3",
      source_name: "voyager_1",
      thumbnail_file: "voyager_1.jpeg",
      description: "Voyager 1's plasma wave instrument detected the vibrations of dense interstellar plasma, or ionized gas, from October to November 2012 and April to May 2013. This sound reproduces the amplitude and frequency of the plasma waves as 'heard' by Voyager 1.",
      info_url: "https://www.youtube.com/watch?v=vR_QP8Nl5bQ"
      )
    Sample.create(name: "Whistler Mode 1 Parker",
      filename: "one_shot_psp_whistler_mode_waves.mp3",
      source_name: "parker_solar_probe",
      thumbnail_file: "parker_solar_probe.jpeg",
      description: "One year and three trips around the Sun later, NASA's Parker Solar Probe heard some weird, sci-fi sounds from plasma within the solar wind -- and those sounds may answer unanswered questions about how the wind forms.",
      info_url: "https://www.youtube.com/watch?v=vR_QP8Nl5bQ"
      )
    Sample.create(name: "Whistler Waves EMFISIS",
      filename: "one_shot_whistler_waves.mp3",
      source_name: "earth",
      thumbnail_file: "EMFISIS_earth.jpeg",
      description: "Whistler waves as heard by the EMFISIS instrument aboard NASA’s Van Allen Probes as it passed around Earth.",
      info_url: "https://www.youtube.com/watch?v=vR_QP8Nl5bQ"
      )
    Sample.create(name: "Langmuir Waves Parker",
      filename: "one_shot_psp_langmuir_waves.mp3",
      source_name: "parker_solar_probe",
      thumbnail_file: "parker_solar_probe.jpeg",
      description: "One year and three trips around the Sun later, NASA's Parker Solar Probe heard some weird, sci-fi sounds from plasma within the solar wind -- and those sounds may answer unanswered questions about how the wind forms.",
      info_url: "https://www.youtube.com/watch?v=vR_QP8Nl5bQ"
      )
  end

  it 'creates a kit object using the database record and sample objects hash' do
    samples = KitFacade.get_samples(@record)
    object = KitObject.new(@record, samples)

    expect(object.name).to eq "Andromeda Pain"
    expect(object.id).to eq @record.id

    expect(object.sequence).to eq @record.sequence
    expect(object.sequence).to be_a String

    expect(object.bpm).to eq @record.bpm
    expect(object.bpm).to be_an Integer

    expect(object.elements).to be_a Hash
    expect(object.elements.keys).to eq(["kick", "snare", "hh_closed", "hh_open", "melody", "texture", "one_shot_1", "one_shot_2"])

    object.elements.values.each do |value|
      expect(value).to be_a SampleObject
    end
  end
end
