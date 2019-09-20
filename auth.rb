require 'sinatra'

use Rack::Auth::Basic, "Authorization Required" do |user, pass|
  # Perform some kind of check and return true/false
  access_permitted = false
  if user == "admin" and pass == "admin"
    access_permitted = true
  end
  access_permitted
end

get '/' do
  "Access granted"
end