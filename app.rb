require 'sinatra/base'
require 'sinatra/reloader'

    class Application < Sinatra::Base
      configure :development do
        register Sinatra::Reloader 
      end

      get '/tasks/new' do
        return erb(:new_task)
      end
  end



# POST /sort-names

# # Request:
# POST http://localhost:9292/sort-names

# # With body parameters:
# names=Joe,Alice,Zoe,Julia,Kieran

# # Expected response (sorted list of names):
# Alice,Joe,Julia,Kieran,Zoe
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