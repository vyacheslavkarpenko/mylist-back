require 'rails_helper'

RSpec.describe ScoresController do
  let(:user){ create(:user) }
  describe 'GET index' do
    let(:score){ create(:score) }
    it 'returns 200 status code' do
      get :index, session: {'user_id' => user.id}

      expect(response.status).to eq(200) 
    end
  end
end