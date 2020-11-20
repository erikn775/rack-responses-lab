require 'time'

class Application

    def call(env)
      resp = Rack::Response.new
  
      current_time = Time.new
      
      resp.write current_time
  
      if current_time 
        resp.write "Good Morning!"
      else
        resp.write "Good Afternoon"
      end
  
      resp.finish
    end
  
  end
  