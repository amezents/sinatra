require "sinatra"

configure do
  set :port => 0080
end

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

get "/greet_to_parts/:first/:last" do
    "Hello there #{params[:first]} #{params[:last]}!"
end

get "/greet/:person" do
    "Hello there #{params[:person]}!\n params[:person]`s type is : #{params[:person].class}\n :person`s type is #{:person.class}  "
end

get  "/square/:number"  do
  if /\d*\..*\d/ =~ params[:number] then  res = params[:number].to_f * params[:number].to_f
  elsif   /\d+/ =~ params[:number] then  res = params[:number].to_i * params[:number].to_i
  else res = "Not a digit"
  end
  "#{res}"
end

get  "/sinatra_st"  do
  "<h3>I love <a href=http://www.sinatrarb.com/>Sinatra</a>!</h3>"
end

get "/not_my_cat" do
   send_file "cat.html"
end

get  "/Sinatra_st"  do
   send_file "sinatra.html"
end


get  "/sinatra"  do
   erb :sinatra
end












get "/secret" do
	"You found the secret page!!! shhhhhh!!!!"
end
