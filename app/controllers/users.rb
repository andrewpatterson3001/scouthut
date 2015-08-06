get '/users/new' do #render the signup page
  erb :_signup
end

post '/users' do #add a user to the database
  @user = User.new(type: params[:type], name: params[:name], email: params[:email], password: params[:password], birthday: params[:birthday])
  if @user.save
    session[:id] = @user.id
    redirect "/users/#{session[:id]}"
  else
    @signup_fail = true
    erb :_signup
  end
end
