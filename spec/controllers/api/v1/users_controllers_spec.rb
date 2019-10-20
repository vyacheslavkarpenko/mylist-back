require 'rails_helper'

RSpec.describe Api::V1::UsersController do

  before(:all) do
    @users = User.all
    @a = 10
    @users.count.times { User.first.destroy } if User.all.present?
    20.times { create(:user) }
  end

  let(:user){ create(:user) }
  let(:new_attrebutes){ { name: 'Wolf' } }

  describe 'GET index' do
    it 'returns response code 200' do
      get :index, session: { user_id: user.id }
      expect(response.status).to eq(200)
    end

    it 'renders the index template' do
      get :index, session: { user_id: user.id }

      expect(response).to render_template("index")
    end
    it 'renders json' do
      get :index, format: :json, session: { user_id: user.id }

      expect(@users.to_json).to eq(response.body)
    end
  end

  describe 'GET show' do
    it 'returns response code 200' do
      get :show, session: { user_id: @users.first.id }, params: {id: @users.first.id.to_param}

      expect(response.status).to eq(200)
    end

    it 'renders the show template' do
      get :show, session: { user_id: @users.first.id }, params: {id: @users.first.id.to_param}

      expect(response).to render_template("show")
    end
  end

  describe 'PUT update' do
    it 'updates user attrebutes' do
      put :update, session: { user_id: @users.first.id }, params: {id: @users.first.id.to_param,user: { name: "Wolf" }}
      @users.first.reload
      response.should be_successful
      
      binding.pry
      
      expect(@users.first.name).to eq('Wolf')
    end
  end

end



    # it 'showing all' do
    #   expect(response.status).to eq(200)
    #   expect(@users).to exist
    #   binding.pry
    #   expect(@users.count).to be >= 1
      
    # end

    # it 'showing one' do
    #   expect(user.name).to eq('slava1')
    #   expect(user.email).to eq('slava@gmail2.com')
    # end

    # it 'update name' do
    #   put :update, params: { id: user.to_param, user: {name: 'Wolf'}}
    #   user.reload 
    #   binding.pry
    #   expect(user.name).to eq('Wolf')
    # end


      # describe 'new user' do 
  #   it 'create' do
  #   post :create, params: { user: { name: "Any Name", email: 'slava3@gmail.com', password: '1a2345678'  } }
  #   end
  # end