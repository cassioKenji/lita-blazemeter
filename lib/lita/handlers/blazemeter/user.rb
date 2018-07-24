require 'httparty'
require 'pry'

# https://a.blazemeter.com/api/v4/explorer
class User
  include HTTParty

  base_uri "https://a.blazemeter.com:443/api/v4"
  basic_auth "6c7e3fccc77588e5bd1e8982", "c9109ca45553a134c05f5138819115c5d980019541bf7990bd199d06690c79f02541dd1b"
  format :json
  headers 'Accept' => 'application/json'

  def user
    self.class.get("/user")
  end

  def projects
    self.class.get("/user/projects")
  end

  def roles
    self.class.get("/user/roles")
  end

  def locations
    self.class.get("/user/locations")
  end

  def sessions
    self.class.get("/user/active/sessions")
  end

  def top
    self.class.get("/user/top")
  end

  def tests(limit = 5)
    self.class.get("/user/tests?limit=#{limit}")
  end

  def masters(limit = 5)
    self.class.get("/user/masters?limit=#{limit}")
  end

  # List organization multi-tests
  def collections(limit = 5)
    self.class.get("/user/collections?limit=#{limit}")
  end

end

response = User.new.masters

binding.pry
