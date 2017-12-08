require "sinatra"

get "/" do
	erb :home
end

get "/about" do
	erb :about
end

get "/test" do
	"Prints random number on each customer's /test request-#{rand(1...10)}"
end


get  "/cat"  do
  "Meow Meow I AM CAT"
end

















get "/secret" do
	"You found the secret page!!! shhhhhh!!!!"
end
