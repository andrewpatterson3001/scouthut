get '/' do
  erb :index
end

post '/users' do
  @user = User.create(type: params[:type], name: params[:name], email: params[:email], troop: params[:troop], password: params[:password], birthday: params[:birthday])
  if @user.save
    p 'the user saved'
    session[:id] = @user.id
    redirect "/users/#{session[:id]}"
  else
    p 'the user did not save'
    @signup_fail = true
    erb :index
  end
end

get '/users/:id' do
  @user = User.find(params[:id])
  erb :'users/index'
end

post '/sessions' do
  @user = User.find_by(email: params[:email])
  if @user && @user.password == params[:password]
    session[:id] = @user.id
    redirect "/users/#{@user.id}"
  else
    @login_fail = true
    erb :index
  end
end

delete '/sessions' do
  logout
  redirect "/"
end
