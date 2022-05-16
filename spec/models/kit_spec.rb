require 'rails_helper'

RSpec.describe Kit, type: :model do
  describe 'validations' do
    xit { should validate_presence_of(:name) }
    xit { should validate_uniqueness_of(:name) }
    xit { should validate_presence_of(:kick) }
    xit { should validate_presence_of(:hh_closed) }
    xit { should validate_presence_of(:hh_open) }
    xit { should validate_presence_of(:melody) }
    xit { should validate_presence_of(:texture) }
    xit { should validate_presence_of(:one_shot_1) }
    xit { should validate_presence_of(:one_shot_2) }
    xit { should validate_presence_of(:groove_url) }
  end
end
