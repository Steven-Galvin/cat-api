require 'rails_helper'

describe "post a breed route", type: :request do

  before do
    @user = FactoryGirl.create(:user)
    post '/v1/auth_user', params: {
      email: @user.email,
      password: @user.password
    }
    @user_api_key = JSON.parse(response.body)["auth_token"]

    @breed = FactoryGirl.build(:breed)
      post "/v1/breeds?app_id=#{@user_api_key}", params: {
        name: @breed.name,
        history: @breed.history,
        origin: @breed.origin,
        common_name: @breed.common_name,
        characteristics: @breed.characteristics,
        image: @breed.image,
        fun_fact: @breed.fun_fact,
        variations: @breed.variations
       }
  end

  it 'returns the breed name' do
    expect(jsonParse['name']).to eq(@breed.name)
  end


  it 'returns the breed history' do
    expect(jsonParse['history']).to eq(@breed.history)
  end

  it 'returns the breed origin' do
    expect(jsonParse['origin']).to eq(@breed.origin)
  end

  it 'returns the breed common_name' do
    expect(jsonParse['common_name']).to eq(@breed.common_name)
  end

  it 'returns the breed characteristics' do
    expect(jsonParse['characteristics']).to eq(@breed.characteristics)
  end

  it 'returns the breed image' do
    expect(jsonParse['image']).to eq(@breed.image)
  end

  it 'returns the breed variations' do
    expect(jsonParse['variations']).to eq(@breed.variations)
  end

  it 'returns the breed fun_fact' do
    expect(jsonParse['fun_fact']).to eq(@breed.fun_fact)
  end

  it 'returns a created status' do
    expect(response).to have_http_status(:created)
  end

end
