require_relative '../suffragist'
require 'test/unit'
require 'rack/test'

set :environment, :test

class Suffragist < Test::Unit::TestCase
  include Rack::Test::Methods
  
  def app
    Sinatra::Application
  end
  
  def it_allows_voting
    get '/'
    print "get here"
    binding.pry
    assert last_response.ok?
  end
end