get '/todos' do
  @todos = Todo.all
  erb :'todos/index'
end

get '/todos/create' do
  erb :'todos/create'
end

post '/todos' do
  Todo.add({
    "title": params[:title],
    "description": params[:description]
  })
  redirect '/todos'
end

get '/todos/:id' do
  @todo = Todo.get(params[:id])
  erb :'todos/show'
end
#------------------------------------------------------------------------------------------------------

get '/todos/:id/edit' do
  @todo = Todo.get(params[:id])
  erb :'todos/edite'
end

post '/todos/:id/edit' do
  Todo.edit(params[:id],{
    "title": params[:title], 
    "description": params[:description]
  })
  redirect '/todos'
end
#-------------------------------------------------------------------------------------------------------