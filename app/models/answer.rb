class Answer < ActiveRecord::Base

	belongs_to :authored_by, class_name: "User", foreign_key: "user_id"
 	belongs_to :question

end
