require 'rails_helper'

describe "post a breed route", type: :request do
  breed = FactoryGirl.build(:breed)
  before do
    post '/breeds', params: {
      name: breed.name,
      history: breed.history,
      origin: breed.origin,
      common_name: breed.common_name,
      characteristics: breed.characteristics,
      image: breed.image,
      fun_fact: breed.fun_fact,
      variations: breed.variations
     }
  end

  it 'returns the breed name' do
    expect(JSON.parse(response.body)['name']).to eq(breed.name)
  end


  it 'returns the breed history' do
    expect(JSON.parse(response.body)['history']).to eq(breed.history)
  end

  it 'returns the breed origin' do
    expect(JSON.parse(response.body)['origin']).to eq(breed.origin)
  end

  it 'returns the breed common_name' do
    expect(JSON.parse(response.body)['common_name']).to eq(breed.common_name)
  end

  it 'returns the breed characteristics' do
    expect(JSON.parse(response.body)['characteristics']).to eq(breed.characteristics)
  end

  it 'returns the breed image' do
    expect(JSON.parse(response.body)['image']).to eq(breed.image)
  end

  it 'returns the breed variations' do
    expect(JSON.parse(response.body)['variations']).to eq(breed.variations)
  end

  it 'returns the breed fun_fact' do
    expect(JSON.parse(response.body)['fun_fact']).to eq(breed.fun_fact)
  end

  it 'returns a created status' do
    expect(response).to have_http_status(:created)
  end
end