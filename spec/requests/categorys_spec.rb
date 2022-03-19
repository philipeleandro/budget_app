require 'rails_helper'

RSpec.describe 'Categorys', type: :request do
  describe 'GET /index' do
    it 'INDEX' do
      expect(response).to have_http_status "200"
    end

    describe 'POST /create' do
      it 'CREATE' do
        valid_attributes = { name: "Glass"}
        expect{post categorys_path, params: { category: valid_attributes}.to change(Category, :count).by(1)}
      end

      it 'show' do
        expect(response).to redirect_to(category_path)
      end
    end
end
