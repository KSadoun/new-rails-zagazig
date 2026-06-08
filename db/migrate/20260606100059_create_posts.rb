class CreatePosts < ActiveRecord::Migration[8.1]
  def change
    create_table :posts do |t|
      t.string :title
      t.string :content

      t.timestamps
      add_reference :posts, :user, foreign_key: true
    end
  end

end
