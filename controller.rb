require("sinatra")
require("sinatra/contrib/all")

require_relative("./models/customer")
require_relative("./models/film")
require_relative("./models/ticket")
also_reload("./models/*")

get "/films" do
  @films = Film.all()
  erb(:index)
end

get "/films/1" do
  @films = Film.all()
  erb(:haunting)
end

get "/films/2" do
  @films = Film.all()
  erb(:house)
end

get "/films/3" do
  @films = Film.all()
  erb(:pit)
end

get "/films/4" do
  @films = Film.all()
  erb(:phibes)
end
