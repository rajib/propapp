class CreateUsers < ActiveRecord::Migration
  def change
  	create_table :users do |t|
  		## Admin flag
  		t.boolean :admin

  		## Database authenticatable
  		t.string :email, :null => false, :default => ""
  		t.string :encrypted_password, :null => false, :default => ""

		  ## Recoverable
		  t.string :reset_password_token
		  t.datetime :reset_password_sent_at

		  ## Rememberable
		  t.datetime :remember_created_at

		  ## Trackable
		  t.integer :sign_in_count, :default => 0
		  t.datetime :current_sign_in_at
		  t.datetime :last_sign_in_at
		  t.string :current_sign_in_ip
		  t.string :last_sign_in_ip
		  
		  ## Invitable
		  t.string :invitation_token, :limit => 60  
		  t.datetime :invitation_sent_at
		  t.datetime :invitation_accepted_at
		  t.integer :invitation_limit
		  t.integer :invited_by_id
		  t.string :invited_by_type

  		t.timestamps
  	end
  end
end
