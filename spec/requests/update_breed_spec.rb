require 'rails_helper'

describe "update breed request", type: :request do
  before do
    @user = FactoryGirl.create(:user)
    post '/v1/auth_user', params: {
      email: @user.email,
      password: @user.password
    }
    @user_api_key = JSON.parse(response.body)["auth_token"]

    breed = FactoryGirl.create(:breed)
    put "/v1/breeds/#{breed.id}/?name=tom cat&app_id=#{@user_api_key}"
  end

  it 'should return status 200' do
    expect(response.status).to eq 200
  end

  it 'should return status 200' do
    breed = Breed.first
    expect(breed.name).to eq "tom cat"
  end

end
