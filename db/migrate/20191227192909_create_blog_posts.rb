class CreateBlogPosts < ActiveRecord::Migration[5.1]
  def change
    create_table :blog_posts do |t|
      t.string :title
      t.string :author
      t.text :content
      t.text :excerpt
      t.boolean :published, default: false
      t.datetime :published_at
      t.timestamps
    end
  end
end
