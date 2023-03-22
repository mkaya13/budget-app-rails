require 'rails_helper'

RSpec.describe 'GroupsController', type: :request do
  let :user do
    User.find_or_create_by(email: 'mert@gmail.com') do |user|
      user.name = 'mert'
      user.password = Devise.friendly_token.first(8)
      user.confirmed_at = Time.now
    end
  end

  before(:each) do
    login_as(user)
  end

  describe 'GET users/1/groups/' do
    # Get lists of all groups
    it 'returns a 200 status response' do
      get user_groups_path
      expect(response).to be_successful
      expect(response).to have_http_status(200)
    end
  end
end
