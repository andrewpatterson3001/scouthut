class User < ActiveRecord::Base
  include BCrypt

  validates :email, presence: true
  validates :password_hash, presence:true

  def password
    @password ||= Password.new(password_hash)
  end

  def password=(new_password)
    @password = Password.create(new_password)
    self.password_hash = @password
  end

  # def self.authenticate(email, password) #a class method that checks that a person is entering the correct password
  #   @user = User.find_by(email: email)
  #   if user && user.password_hash == password
  #     user
  #   else
  #     nil       #easier to put this in here rather than in the controller
  #   end
  # end
end
