class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
    	t.references :professional
    	t.string "name"
    	t.string "description"
    	t.string "album_name"
    	t.string "album_desc"
    	t.string "address"
      t.timestamps
    end
    add_index("projects", "professional_id")
    add_index("projects", "name")
  end
end
