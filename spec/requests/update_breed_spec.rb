# require 'rails_helper'
#
# describe "update breed request", type: :request do
#   before do
#     breed = FactoryGirl.create(:breed)
#     put "/v1/breeds/#{breed.id}/?name=tom cat"
#   end
#
#   it 'should return status 200' do
#     expect(response.status).to eq 200
#   end
#
#   it 'should return status 200' do
#     breed = Breed.first
#     expect(breed.name).to eq "tom cat"
#   end
#
# end
