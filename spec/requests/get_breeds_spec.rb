require 'rails_helper'

describe "get all breeds route", type: :request do
  let!(:breeds) {FactoryGirl.create_list(:breed, 5)}

  before { get '/v1/breeds' }

  it 'returns all breeds' do
    expect(jsonParse.size).to eq (5)
  end

  it 'returns status code 200' do
    expect(response).to have_http_status(:success)
  end
end
