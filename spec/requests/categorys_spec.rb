require 'rails_helper'

RSpec.describe 'Categorys', type: :request do
  describe 'GET /index' do
    it 'aa' do
      get "/categorys/id"
      expect(response.body).to eq({})
    end
  end
end
