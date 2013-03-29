class User < ActiveRecord::Base
  attr_accessible  :username, :password, :password_confirmation


  has_secure_password

  validates :username, presence: true,
  					   uniqueness: { case_sensitive: false },
  					   length: { in: 5..10 },
  					   format: { with: /^[a-z][a-z0-9]*$/, message: 'Solo mayusculas y numeros' }
  validates :password, length: { in: 4..8, message: 'debe tener entre 4 y 8 caracteres' }

  validates :password_confirmation, length: { in: 4..8, message: 'debe tener entre 4 y 8 caracteres' } 					   				   	


end