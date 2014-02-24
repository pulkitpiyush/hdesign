class CreatePhotos < ActiveRecord::Migration
  def change
    create_table :photos do |t|
			t.references :professional
      t.references :project
      t.references :tag
      t.string "name"
      t.string "desc"
      t.string "link"
      t.timestamps
    end
    add_index("photos", "professional_id")
    add_index("photos", "project_id")
    add_index("photos", "tag_id")
  end
end
