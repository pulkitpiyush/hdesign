class DeviseCreateProfessionals < ActiveRecord::Migration
  def change
    create_table(:professionals) do |t|
      ## Database authenticatable
      t.string :email,              :null => false, :default => ""
      t.string :encrypted_password, :null => false, :default => ""

      ## Recoverable
      t.string   :reset_password_token
      t.datetime :reset_password_sent_at

      ## Rememberable
      t.datetime :remember_created_at

      # ## Trackable
      # t.integer  :sign_in_count, :default => 0, :null => false
      # t.datetime :current_sign_in_at
      # t.datetime :last_sign_in_at
      # t.string   :current_sign_in_ip
      # t.string   :last_sign_in_ip

      ## Confirmable
      t.string   :confirmation_token
      t.datetime :confirmed_at
      t.datetime :confirmation_sent_at
      t.string   :unconfirmed_email # Only if using reconfirmable

      ## Lockable
      # t.integer  :failed_attempts, :default => 0, :null => false # Only if lock strategy is :failed_attempts
      # t.string   :unlock_token # Only if unlock strategy is :email or :both
      # t.datetime :locked_at

      # User Defined Fields 
      t.string "first_name"
      t.string "last_name"
      t.string "website", :limit => 50
      t.string "addr_line1" 
      t.string "addr_line2"
      t.string "addr_city", :limit => 25
      t.string "addr_state", :limit => 25
      t.integer "pincode"
      t.integer "phone_1"
      t.integer "phone_2"
      t.integer "phone_3"
      t.string "profile_pic_link"
      t.string "area_served"
      t.string "firm_name"
      t.string "firm_category", :limit => 25
      t.string "license_no", :limit => 25
      t.text "business_desc"
      t.string "fb_link"
      t.string "twitter_link"
      t.text "awards"
      t.text "fee_structure"
      t.timestamps
    end

    add_index :professionals, :email,                :unique => true
    add_index :professionals, :reset_password_token, :unique => true
    add_index :professionals, :confirmation_token,   :unique => true
    # add_index :professionals, :unlock_token,         :unique => true
  end
end
