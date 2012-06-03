Resque::Server.use(Rack::Auth::Basic) do |user, password|
  user == "resqueadmin" && password == "765321"
end