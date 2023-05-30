require "spec_helper"
require "rack/test"
require_relative '../../app'

describe Application do
        # This is so we can use rack-test helper methods.
        include Rack::Test::Methods

        # We need to declare the `app` value by instantiating the Application
        # class so our tests work.
        let(:app) { Application.new }

    context 'GET /hello' do
        it 'shoud return "Hello Julia"' do
            # Send a GET request to /
            # and returns a response object we can test.
            response = get('/hello?name=Julia')

            # Assert the response status code and body.
            expect(response.status).to eq(200)
            expect(response.body).to eq('Hello Julia')
        end
    end
            

        it 'should return "Hello Mary"' do
            response = get('/hello?name=Mary')

            expect(response.status).to eq(200)
            expect(response.body).to eq('Hello Mary')
        end

    it 'should return "Hello Karim"' do
        response = get('/hello?name=Karim')

        expect(response.status).to eq(200)
        expect(response.body).to eq('Hello Karim')
    end
end


