class User < ActiveRecord::Base
	validates_length_of :login, :within => 3 ..40
	validates_length_of :password, :within => 5 ..40
	validates_presence_of :login, :email
	validates_uniqueness_of :login, :email
	validates_confirmation_of :password
	validates_format_of :email, :with => /^([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})$/i, :message => "Invalid email"
	attr_accessor :password, :password_confirmation
	attr_protected :password_salt
	def password=(pass)
		@password=pass
		password_salt = User.random_string(10) if !password_salt
		#User.password_salt = password_salt
		#password_salt = "5GMU5PoRg3" if !password_salt
		self.password_hash = User.hash_password(@password, password_salt)
	end
	protected
	def self.hash_password(pass, password_salt)
		Digest::SHA1.hexdigest(pass+password_salt)
	end
	def self.random_string(len)
		#generate a random password consisting of strings and digits
		chars = ("a" .. "z").to_a + ("A" .. "Z").to_a + ("0" .. "9").to_a
		newpass = ""
		1.upto(len) {|i| newpass << chars [rand(chars.size-1)]}
		newpass.to_s
	end
	def self.clear_password
		
		end
	
	
end
