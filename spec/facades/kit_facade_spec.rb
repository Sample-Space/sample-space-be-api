require 'rails_helper'

RSpec.describe KitFacade, type: :facade do

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
      groove_file: "groove_stardust_passing_comet_temple_1.mp3"
    )
    Kit.create(name: "Magnetosphere",
      kick: "Magnetic Drum THEMIS",
      snare: "Jupiter Magnetosphere Juno",
      hh_closed: "Jupiter Sounds Cassini",
      hh_open: "XXXXXXXXXhat_open_cassini_saturn_radio_emmisions_1",
      melody: "Cold Helium",
      texture: "XXXXXXXXXXXXX",
      one_shot_1: "Langmuir Waves Parker",
      one_shot_2: "Whistler Mode 1 Parker",
      groove_file: "groove_cassini_shields_up.mp3"
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

  it 'gets the names of all existing kits' do
    data = KitFacade.get_all_kits
    kits = data["kits"]
    expect(kits).to eq (["Andromeda Pain", "Magnetosphere"])
  end

  it 'gives a hash of all the kit records sound types and their sample objects' do
    kit_samples = KitFacade.get_samples(@record)

    expect(kit_samples).to be_a Hash
    expect(kit_samples.keys).to eq(["kick", "snare", "hh_closed", "hh_open", "melody", "texture", "one_shot_1", "one_shot_2"])

    kit_samples.values.each do |value|
      expect(value).to be_a SampleObject
    end
  end

  it 'gets serialized kit data for a kit object' do
    output = KitFacade.get_kit(@record)

    kit = output["kit"]

    expect(kit["name"]).to eq("Andromeda Pain")
    expect(kit["id"]).to eq(@record.id)

    expect(kit["groove_url"]).to be_a String
    expect(kit["groove_url"]).to include "https://sampe-space.s3.amazonaws.com/#{@record.groove_file}"

    elements = kit["elements"]
    expect(elements).to be_a Hash
    expect(elements.keys).to eq(["kick", "snare", "hh_closed", "hh_open", "melody", "texture", "one_shot_1", "one_shot_2"])

    elements.values.each do |value|
      expect(value).to be_a Hash
      expect(value.keys).to eq(["name", "source_name", "sound_url", "thumbnail_url", "description", "info_url"])
      value.values.each do |subvalue|
        expect(subvalue).to be_a String
      end
    end
  end
end
