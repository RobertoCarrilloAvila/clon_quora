class CrearUser < ActiveRecord::Migration
	def change
		create_table :users do |t|
			t.string :name 
			t.string :email
			t.string :password_digest

			t.timestamps null: false
		end
	end


	create_table :questions do |t|
		t.belongs_to :user, index: true
		t.string :title
		t.string :description

		t.timestamps null: false
	end


	create_table :answers do |t|
		t.belongs_to :user, index: true
		t.belongs_to :question, index: true
		t.string :description

		t.timestamps null: false
	end

end
