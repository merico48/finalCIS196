class User < ApplicationRecord
	include BCrypt

  has_many :cards
  has_many :orders
  has_and_belongs_to_many :items


  def password
    @password ||= Password.new(password_hash)
  end

  def password=(new_password)
    @password = Password.create(new_password)
    self.password_hash = @password
  end
end