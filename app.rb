require "sinatra"

get "/" do
	erb :home
end

get "/about" do
	erb :about
end

get "/test" do
  puts "this is the request to test page. And it's output is placed in server output"
end




















get "/secret" do
	"You found the secret page!!! shhhhhh!!!!"
end
