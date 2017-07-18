require 'swagger_helper'

describe 'Breeds API' do

  path '/v1/breeds' do

    post 'Creates a breed' do
      tags 'Breeds'
      consumes 'application/json', 'application/xml'
      parameter name: :breed, in: :body, schema: {
        type: :object,
        properties: {
          name: { type: :string },
          origin: { type: :string },
          common_name: { type: :string },
          characteristics: { type: :string },
          image: { type: :string },
          fun_fact: { type: :string },
          variations: { type: :string },
          history: { type: :string }
        },
        required: [ 'name', 'origin', 'common_name', 'characteristics', 'image', 'fun_fact', 'variations', 'history' ]
      }

      response '201', 'breed created' do
        let(:breed) { { name: 'cat', origin: 'here', common_name: 'kitty', characteristics: 'mellow', image: 'https://upload.wikimedia.org/wikipedia/commons/thumb/9/9d/Britishblue.jpg/800px-Britishblue.jpg', fun_fact: 'pretty cool fact', variations: 'calico', history: "came from lions" } }
        run_test!
      end

      # response '422', 'invalid request' do
      #   let(:breed) { { name: 'cat' } }
      #   run_test!
      # end
    end
  end

  path '/v1/breeds/{id}' do

    get 'Retrieves a breed' do
      tags 'Breeds'
      produces 'application/json', 'application/xml'
      parameter name: :id, :in => :path, :type => :string

      response '200', 'breed found' do
        schema type: :object,
          properties: {
            id: { type: :integer },
            name: { type: :string },
            origin: { type: :string },
            common_name: { type: :string },
            characteristics: { type: :string },
            image: { type: :string },
            fun_fact: { type: :string },
            variations: { type: :string },
            history: { type: :string }
          },
          required: [ 'id', 'name', 'origin', 'common_name', 'characteristics', 'image', 'fun_fact', 'variations', 'history' ]

        let(:id) { Breed.create(name: 'cat', origin: 'here', common_name: 'kitty', characteristics: 'mellow', image: 'https://upload.wikimedia.org/wikipedia/commons/thumb/9/9d/Britishblue.jpg/800px-Britishblue.jpg', fun_fact: 'pretty cool fact', variations: 'calico', history: "came from lions").id }
        run_test!
      end

      response '404', 'breed not found' do
        let(:id) { 'invalid' }
        run_test!
      end
    end
  end
end
