require 'rails_helper'

RSpec.describe Kit, type: :model do
  describe 'validations' do
    it { should validate_presence_of(:name) }
    it { should validate_uniqueness_of(:name) }
    it { should validate_presence_of(:kick) }
    it { should validate_presence_of(:hh_closed) }
    it { should validate_presence_of(:hh_open) }
    it { should validate_presence_of(:melody) }
    it { should validate_presence_of(:texture) }
    it { should validate_presence_of(:one_shot_1) }
    it { should validate_presence_of(:one_shot_2) }
    it { should validate_presence_of(:sequence) }
    it { should validate_presence_of(:bpm) }
  end
end
