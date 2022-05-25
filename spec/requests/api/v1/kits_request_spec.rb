require 'rails_helper'

RSpec.describe 'Kits Request', type: :request do

  before do
    @kit_1 = Kit.create(name: "Andromeda Strain",
      kick: "K_Star 808 Kepler KIC",
      snare: "SN_Plasmasphere Polar",
      hh_closed: "HH1_Radar Echoes Titan Huygens",
      hh_open: "HH2_Saturn Sounds Cassini",
      melody: "M_Plasma 9 Voyager 1",
      texture: "OS_Whistler Waves EMFISIS",
      one_shot_1: "OS_Deep Space Hubble",
      one_shot_2: "G_Passing Tempel 1 Stardust",
      groove_file: "groove_stardust_passing_comet_temple_1.mp3",
      sequence: "[
        ['C3', 'F#3'],
        ['D#3', 'E3'],
        ['D3'],
        ['D#3'],
        ['C#3', 'F#3'],
        ['D3', 'E3', 'F#3'],
        ['D#3'],
        ['D3'],
        ['C3'],
        ['D#3', 'F3'],
        ['D3', 'F3'],
        ['F3'],
        ['C#3', 'G3'],
        ['D#3', 'F#3'],
        ['D#3', 'F#3'],
        ['C3', 'D3']
      ]",
      bpm: 180
    )
    @kit_2 = Kit.create(name: "Magnetosphere",
      kick: "K_Magnetic Drum THEMIS",
      snare: "SN_Jupiter Magnetosphere Juno",
      hh_closed: "HH1_Saturn Sounds Cassini",
      hh_open: "HH2_Saturn Sounds Cassini",
      melody: "M_Cold Helium",
      texture: "OS_Langmuir Waves Parker",
      one_shot_1: "OS_Whistler Mode 1 Parker",
      one_shot_2: "G_Shields Up Cassini",
      groove_file: "groove_cassini_shields_up.mp3",
      sequence: '[
        ["C3", "F#3"],
        ["D3"],
        ["D#3"],
        ["E3"],
        ["C#3"],
        null,
        ["D3"],
        null,
        ["C3", "F#3"],
        null,
        ["D3"],
        null,
        ["C#3", "F3"],
        ["D3"],
        ["D#3", "G3"],
        ["C3"]
        ]',
      bpm: 260
    )
    @kit_3 = Kit.create(name: "Apollo 11",
      kick: "K_Eagle Has Landed",
      snare: "SN_One Small Step",
      hh_closed: "HH1_Eagle Has Landed",
      hh_open: "HH2_Eagle Has Landed",
      melody: "OS_Eagle Has Landed",
      texture: "OS_One Small Step",
      one_shot_1: "OS_One Giant Leap",
      one_shot_2: "G_We Choose The Moon",
      groove_file: "groove_jfk_wechoosethemoonspeech.mp3",
      sequence: '[
        ["C3", "D3"],
        ["D3"],
        ["D#3"],
        ["D3"],
        ["C3", "C#3", "D3"],
        ["D3"],
        ["D3"],
        ["C3", "D3"],
        ["C3", "D3"],
        ["D3"],
        ["D#3"],
        ["D3"],
        ["C#3", "C3", "D3"],
        ["D3"],
        ["D3"],
        ["D3"],
        ]',
        bpm: 350
    )
  end

  it 'returns a successful response' do
    get '/api/v1/kits'
    expect(response).to be_successful
    expect(response.status).to eq 200
  end

  it 'returns the names of all kits' do
    get '/api/v1/kits'

    body = JSON.parse(response.body, symbolize_names: true)

    kits = body[:kits]
    expected = ["Andromeda Strain", "Magnetosphere", "Apollo 11"]
    expect(kits).to eq(expected)
  end
end
