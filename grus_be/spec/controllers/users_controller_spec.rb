require_relative '../rails_helper'

RSpec.describe UsersController, type: :request do
  context 'users#show' do
    it 'should return a created user\'s fields by username if found' do
      user = create(:user)

      get "/users/profile?username=#{user.username}"

      expected_response_body = {
        first_name: user.first_name,
        middle_name: user.middle_name,
        last_name: user.last_name,
        motto: user.motto,
        username: user.username
      }.to_json

      expect(response.body).to eq(expected_response_body)
      expect(response.status).to eq(200)
    end

    it 'should return a 404 if the user is not found' do
      get '/users/profile?username=notAUser'

      expect(response.body).to eq("{}")
      expect(response.status).to eq(404)
    end
  end

  context 'users#create' do
    it 'should create the user given valid information' do
      post '/users', params: { user: { email: 'notanemail@na.moc', password: 'not@realpassword' } }.to_json

      expected_response_body = {
        message: "User successfully created"
      }

      expect(response.status).to eq(201)
      expect(response.body).to eq(expected_response_body)
    end
  end
end