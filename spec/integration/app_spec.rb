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

context 'POST /tasks' do
        it 'should create task and return confirmation page' do
            response = post('/tasks', task_name: 'Buy milk')
            expect(response.status).to eq(200)
            expect(response.body).to include('<h1>You saved task: Buy milk</h1>')
        end
    end

    it 'should create task and return confirmation page with different name' do
        response = post('/tasks', task_name: 'Renew gym membership')
        expect(response.status).to eq(200)
        expect(response.body).to include('<h1>You saved task: Renew gym membership</h1>')
    end
end





