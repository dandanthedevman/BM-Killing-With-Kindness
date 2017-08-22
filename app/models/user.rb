require 'bcrypt'

class User < ActiveRecord::Base
  # Remember to create a migration!
  validates_presence_of :user_name, :email, :password
  validates :email, :user_name, uniqueness: true

  #Association examples
  has_many :messages
  # has_many :questions, foreign_key: 'author_id'
  # has_many :answers, foreign_key: 'author_id'
  # has_many :comments

  def password
    @password ||= BCrypt::Password.new(hashed_password)
  end

  def password=(new_password)
    @password = BCrypt::Password.create(new_password)
    self.hashed_password = @password
  end

  def authenticate?(input_password)
    self.password == input_password
  end

end
