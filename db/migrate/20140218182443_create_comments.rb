class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
    	t.references :professional		#comments abt the professional as a whole
    	t.references :project
    	t.references :photo
    	t.text "description"
      t.timestamps
    end
    add_index("comments", "professional_id")
    add_index("comments", "project_id")
    add_index("comments", "photo_id")
  end
end
