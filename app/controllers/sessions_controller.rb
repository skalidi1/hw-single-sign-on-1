class SessionsController < ApplicationController
  def start_test
  end

  def clear
  end

  def debug
  end

  def new
  end

  def create
    user = User.create_with_omniauth(auth_hash['info'])
    auth = Authorization.create_with_omniauth(auth_hash, user)
    session[:user_id] = auth.user.id
    self.current_user= auth.user
    message = "Welcome #{user.name}! You have signed up via #{auth.provider}."
    flash[:notice] = message
    #debug
  end
  
  def debug
    puts '\n raw auth_hash\n'
    p @auth_hash
    puts '\n\nauth_hash by key\n'
    @auth_hash.each_pair do |key, value|
      puts "\nKEY: #{key}"
      if value.kind_of?(Hash)
        nested_hash(value, '')
      else
        puts "Value: #{value}"
      end
    end
  end
  
  def failure
  end

  def destroy
  end
    
  private
  
  def nested_hash nh, indent
    puts indent + "VALUE is a nested hash"
    indent += '  '
    nh.each_pair do |key, value|
      puts indent + "KEY: #{key}"
      if value.kind_of?(Hash)
        nested_hash(value, indent)
      else
        puts indent + "VALUE:  #{value}"
      end     
    end
  end
  
  def auth_hash
    #ensures that it's only retrieved once per cycle
    @auth_hash ||= request.env['omniauth.auth']
    p @auth_hash
  end
end
