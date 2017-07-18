require 'rails_helper'

describe "destroy breed route", type: :request do
  before do
    @breed1 = FactoryGirl.create(:breed)
    @breed2 = FactoryGirl.create(:breed)
    delete "/v1/breeds/#{@breed1.id}"
  end

  it 'should return status 200' do
    expect(response.status).to eq 200
  end

  it 'should delete the breed' do
    expect(Breed.all[0]).to eq @breed2
  end

end
