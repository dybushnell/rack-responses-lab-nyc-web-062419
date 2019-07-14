class Application
  def call(env)
    resp = Rack::Response.new
    time = Time.now.strftime("%H%M%S").to_i

    if time < 120000
      resp.write "Good Morning!"
    else
      resp.write "Good Afternoon!"
    end
    resp.finish
  end
end
