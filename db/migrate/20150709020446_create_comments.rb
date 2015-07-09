class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :commenter
      t.text :body
      t.references :video

      t.timestamps
    end
    add_index :comments, :video_id
  end
end
