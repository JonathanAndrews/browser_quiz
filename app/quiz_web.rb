 require_relative 'lib/quiz'
 require 'sinatra/base'

 class RiddleQuizApp < Sinatra::Base

   enable :sessions

   get '/' do
     erb :index
   end

   get '/riddle' do
     session[:question_hash] = Quiz.new.fetch_question
     @riddle = session[:question_hash]["riddle"]
     erb :riddle
   end

   post '/answer_input' do
     session[:submitted_answer] = params[:submitted_answer]
     redirect '/answer_output'
   end

   get '/answer_output' do
     @submitted_answer = session[:submitted_answer].downcase
     @answer = session[:question_hash]["answer"].downcase
     @riddle = session[:question_hash]["riddle"]
     erb :answer_page
   end

   run! if app_file == $0
end
