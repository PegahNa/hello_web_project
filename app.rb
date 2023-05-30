require 'sinatra/base'

class Application < Sinatra::Base
  get '/hello' do
    name = params[:name]
    return "Hello #{name}"
  end
end

    # Request:
# POST /submit

# # With body parameters:
# name=Leo
# message=Hello world

# # Expected response (2OO OK):
# Thanks Leo, you sent this message: "Hello world"



  #get /
  #root path (homepage,index page)
#   get '/' do

#     return 'Hello!'
#   end

#   get '/posts' do
#         name = params[:name]
#         cohort_name = params[:cohort_name]

#         return "Hello #{name}, you are in the chohort #{cohort_name}"
#   end 

#   post '/posts' do
#     title = params[:title]
#     return "Post was created with title: #{title}"
#   end
# end