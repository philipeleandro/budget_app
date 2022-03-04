require 'rails_helper'

RSpec.describe Category, type: :model do
  describe 'belong_to association' do
   it {should belong_to(:macroservice)}
  end
end
