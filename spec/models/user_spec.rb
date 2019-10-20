require 'rails_helper'

RSpec.describe User, type: :model do
  context 'Validation test' do
    it 'ensures name presence' do
      user = User.new(
        email: 'slava@gmail.com',
        password: '12345678'
      ).save
      expect(user).to eq(false)
    end

    it 'ensures email presence' do
      user = User.new(
        name: 'slava1',
        password: '12345678'
      ).save
      expect(user).to eq(false)
    end

    it 'ensures pasword presence' do
      user = User.new(
        name: 'slava1',
        email: 'slava@gmail.com'
      ).save
      expect(user).to eq(false)
    end

    it 'user saved sucsessfully' do
      user = User.new(
        name: 'slava1',
        email: 'slava@gmail1.com',
        password: '12345678'
      ).save!

    expect(user).to eq(true)
    end
  end
end
