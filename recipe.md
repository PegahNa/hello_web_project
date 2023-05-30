1. Design the Route Signature
   You'll need to include:

the HTTP method
the path
any query parameters (passed in the URL)
or body parameters (passed in the request body)

Request:
method: GET
path:
names:
Expected response (2OO OK):
Julia, Mary, Karim

2. Design the Response
   The route might return different responses, depending on the result.

For example, a route for a specific blog post (by its ID) might return 200 OK if the post exists, but 404 Not Found if the post is not found in the database.

Your response might return plain text, JSON, or HTML code.

Replace the below with your own design. Think of all the different possible responses your route will return.

<!-- EXAMPLE -->
<!-- Response when the post is found: 200 OK -->

when query param name is 'Julia'
Hello Julia!
when query param name is 'Mary'
Hello mary!

3. Write Examples
   Replace these with your own design.

# Request:

GET /hello?name=Julia

# Expected response:

Hello Julia!

Response for 200 OK

# Request:

GET /hello?name=Mary

# Expected response:

Hello Mary!

Response for 404 Not Found

4. Encode as Tests Examples

# EXAMPLE

# file: spec/integration/application_spec.rb

require "spec_helper"

describe Application do
include Rack::Test::Methods

let(:app) { Application.new }

context "GET /" do
it 'returns 200 OK' do # Assuming the post with id 1 exists.
response = get('/posts?id=1')

      expect(response.status).to eq(200)
      # expect(response.body).to eq(expected_response)
    end

    it 'returns 404 Not Found' do
      response = get('/posts?id=276278')

      expect(response.status).to eq(404)
      # expect(response.body).to eq(expected_response)
    end

end
end

5. Implement the Route
   Write the route and web server code to implement the route behaviour.