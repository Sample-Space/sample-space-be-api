require 'rails_helper'

RSpec.describe Sample, type: :model do
  describe 'validations' do
    it { should validate_presence_of(:name) }
    it { should validate_uniqueness_of(:name) }
    it { should validate_presence_of(:source_name) }
    it { should validate_presence_of(:filename) }
    it { should validate_presence_of(:thumbnail_file) }
    it { should validate_presence_of(:description) }
    it { should validate_presence_of(:info_url) }
  end
end
