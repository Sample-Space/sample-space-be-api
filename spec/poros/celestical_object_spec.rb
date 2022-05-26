require 'rails_helper'
require './app/poros/celestial'

RSpec.describe 'CelestialPoro' do
  before(:each) do
    @data = {

      name: "mun",
      thumbnail: "google.com",
      description: "the mun"

    }

    @poro = CelestialPoro.new(@data[:name], @data[:thumbnail], @data[:description])
  end

  context 'anything good' do
    it 'exists' do
      expect(@poro).to be_a(CelestialPoro)
    end

    it 'can read attributes' do
      expect(@poro.name).to eq(@data[:name])
      expect(@poro.thumbnail).to eq(@data[:thumbnail])
      expect(@poro.description).to eq(@data[:description])
    end
  end
end
