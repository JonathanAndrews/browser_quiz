 require 'sinatra/base'

 class RiddleQuizApp < Sinatra::Base
   get '/' do
     erb :index
   end

   get '/riddle' do
     @riddle = "This is a riddle"
     erb :riddle
   end

   post '/answer_input' do
     session[:submitted_answer] = params[:submitted_answer]
     redirect '/answer_output'
   end

   get '/answer_output' do
     erb :answer_page
   end

   run! if app_file == $0
end
