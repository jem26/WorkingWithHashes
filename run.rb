require 'sinatra'

get '/' do
  # hello
  @varaible_for_view = 'Hi! I am a variable. the @ at the beginning will make it accessible in the erb/view file.'
  @people = ["Jonathan", "Joel", "Jarrett"]
  erb :index, layout: :main
end

get '/states' do
  @states = []
  state = {"id"=>"IL", "state"=>"Illinois"}
  @states.push(state)
  state = {"id"=>"CA", "state"=>"California"}
  @states.push(state)
  state = {"id"=>"IN", "state"=>"Indiana"}
  @states.push(state)
  state = {"id"=>"OH", "state"=>"Ohio"}
  @states.push(state)
  state = {"id"=>"AL", "state"=>"Alabama"}
  @states.push(state)

  @states.sort_by! { |hash| hash["state"]}

  erb :states, layout: :main
end
