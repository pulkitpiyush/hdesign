class CreateApproveFlags < ActiveRecord::Migration
  def change
    create_table :approve_flags do |t|
    	t.references :professional		#comments abt the professional as a whole
    	t.references :project
    	t.references :photo
    	t.text "description"
    	t.boolean "approved", :default => false 
    	t.boolean "deleted", :default => false
      t.timestamps
    end
    add_index("approve_flags", "professional_id")
    add_index("approve_flags", "project_id")
    add_index("approve_flags", "photo_id")
  end
end
