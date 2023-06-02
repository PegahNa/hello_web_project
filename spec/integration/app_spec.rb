require "spec_helper"
require "rack/test"
require_relative '../../app'

describe Application do
        # This is so we can use rack-test helper methods.
        include Rack::Test::Methods

        # We need to declare the `app` value by instantiating the Application
        # class so our tests work.
        let(:app) { Application.new }


context 'GET /tasks/new' do
    it 'should return html form to create a new task' do
        # Send a GET request to /
        # and returns a response object we can test.
        response = get('/tasks/new')

        # Assert the response status code and body.
        expect(response.status).to eq(200)
        expect(response.body).to include('<form method="POST" action="/tasks">')
        expect(response.body).to include('<input type="text" name="task_name" />')
    end
end
end



