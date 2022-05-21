require 'rails_helper'
require 'aws-sdk-s3'

RSpec.describe 'Presigner', type: :service do

  it 'builds a presigned url' do
    signer = Aws::S3::Presigner.new
    url = signer.presigned_url(:get_object, bucket: "sampe-space",
      key: "texture_chorus_radio_waves_within_earth_atmosphere.mp3",
      expires_in: 604800)

    expect(url).to be_a String
    expect(url).to include "https://sampe-space.s3.amazonaws.com/texture_chorus_radio_waves_within_earth_atmosphere.mp3?"
  end
end
