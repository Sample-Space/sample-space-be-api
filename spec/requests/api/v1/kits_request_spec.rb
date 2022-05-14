require 'rails_helper'

RSpec.describe 'Kits Request', type: :request do

  before do
    @kit_1 = Kit.create(name: "Starship",
      kick: "k",
      snare: "s",
      hh_closed: "hhc",
      hh_open: "hho",
      melody: "m",
      texture: "t",
      one_shot_1: "1s1",
      one_shot_2: "1s2",
      groove_url: "g"
    )
    @kit_2 = Kit.create(name: "Dyson Sphere",
      kick: "k",
      snare: "s",
      hh_closed: "hhc",
      hh_open: "hho",
      melody: "m",
      texture: "t",
      one_shot_1: "1s1",
      one_shot_2: "1s2",
      groove_url: "g"
    )
    @kit_3 = Kit.create(name: "Orbital Station",
      kick: "k",
      snare: "s",
      hh_closed: "hhc",
      hh_open: "hho",
      melody: "m",
      texture: "t",
      one_shot_1: "1s1",
      one_shot_2: "1s2",
      groove_url: "g"
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
    expected = ["Starship", "Dyson Sphere", "Orbital Station"]
    expect(kits).to eq(expected)
  end
end
