require 'rails_helper'

RSpec.describe Category, type: :model do
  describe 'belong_to association' do
    it { should have_many(:tasks) }
  end
end
