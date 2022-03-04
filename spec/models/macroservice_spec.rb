require 'rails_helper'

RSpec.describe Macroservice, type: :model do
  describe 'has_many association' do
    it { should have_many(:categorys)}
  end
end
