require_relative 'config/environment'

class App < Sinatra::Base

    get "/" do
        erb :user_input
    end

    post "/piglatinize" do
        @your_input = params[:user_phrase]
        @converted_text = PigLatinizer.new.piglatinize(@your_input)
        erb :result
    end
end