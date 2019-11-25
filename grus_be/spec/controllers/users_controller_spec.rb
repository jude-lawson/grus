require_relative '../rails_helper'

RSpec.describe UsersController, type: :request do
  it 'should return a created user\'s fields by username' do
    user = create(:user)

    get "/users/profile?username=#{user.username}"

    expected_response_body = {
      first_name: user.first_name,
      middle_name: user.middle_name,
      last_name: user.last_name,
      motto: user.motto
    }.to_json

    expect(response.body).to eq(expected_response_body)
    expect(response.status).to eq(200)
  end
end