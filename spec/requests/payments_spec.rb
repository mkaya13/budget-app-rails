require 'rails_helper'

RSpec.describe 'PaymentsController', type: :request do
  let :user do
    User.find_or_create_by(email: 'mert@gmail.com') do |user|
      user.name = 'mert'
      user.password = Devise.friendly_token.first(8)
      user.confirmed_at = Time.now

      Group.new(user_id: 1, name: 'Financial', icon: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTtLHJ5rsDX4MDD0RKixJpMM733IVFMUn42ag&usqp=CAU')
      Payment.new(user_id: 1, name: 'Food', amount: 25.5)
    end
  end

  before(:each) do
    login_as(user)
  end

  describe 'GET users/1/payments/1' do
    # Get lists of all foods
    it 'returns a 200 status response' do
      get user_group_payments_path
      expect(response).to be_successful
      expect(response).to have_http_status(200)
    end
  end
end
