
require_relative('../models/team.rb')
#index
get '/teams' do
  @teams = Team.all()
  erb(:"teams/index")
end

#new
get '/teams/new' do
  erb(:"teams/new")
end

#create
post '/teams' do
  @team = Team.new(params)
  @team.save()
  redirect '/teams'
end

#show
get '/teams/:id' do
 @team=Team.find(params[:id])
 erb(:"teams/show")
end

#edit
get '/teams/:id/edit' do
 
end

#update
post '/teams/:id' do
  
end

#delete
delete '/teams/:id' do
  
end
