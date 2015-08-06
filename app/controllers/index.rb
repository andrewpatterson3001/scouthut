get '/' do #render the homepage
  erb :index
end

post '/sessions' do #set sessions when user logs in
 @user = User.find_by(email: params[:email])

  if @user && @user.password == params[:password]
    session[:user_id] = @user.id
    redirect "/habits"
  else
    @login_fail = true
    erb :_signin
  end
end

get '/sessions/new' do #render the signin page
  erb :_signin
end
