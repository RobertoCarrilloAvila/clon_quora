
class User < ActiveRecord::Base

	has_many :questions
	has_many :answers_received, through: :questions, source: :answers
	has_many :answers_written, class_name: "Answer", foreign_key: "user_id"

	validates :email, uniqueness: true

    include BCrypt

	def self.authenticate(email, user_password)
		puts "*****************************************"
		user = User.find_by(email: email)
		puts "user: #{user.inspect}"
		puts "-------------------------------------------------------"
		puts "pass: #{user_password}"
		puts user.password==(user_password)
		if user && (user.password == user_password)
			return user
		else
			nil
		end
	end

	def password
	  @password ||= Password.new(password_digest)
	end

    def password=(user_password)
	  @password = Password.create(user_password)
	  self.password_digest = @password
	end


end
