class ApplicationController < Sinatra::Base
  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
    enable :sessions
    set :session_secret, "carcollection"
  end

  get '/' do
    session[:greeting] = "Hello Mr Charles"
    response.set_cookie 'credit_amount', '100'
    "Hello World"
  end

  get '/loggedin' do
    session[:greeting]
    "you have #{request.cookies['credit_amount']} credits"
  end
end
