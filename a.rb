require 'bcrypt'

#登録画面
signup_password = BCrypt::Password.create("my")
puts signup_password
user.pass = BCrypt::Password.create("my")

#ログイン画面
user = User.find_by(uid: params[:uid])
login_password = BCrypt::Password.new(user.pass)
if login_password == "my" #params[:pass]
    puts "OK"
end

if BCrypt::Password.new(user.pass) == params[:pass]
    puts "logged in!"
end