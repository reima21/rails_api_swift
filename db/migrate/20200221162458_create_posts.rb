class CreatePosts < ActiveRecord::Migration[5.2]
  def change
    create_table :posts do |t|
      t.string :isbn
      t.string :title
      t.string :book_image
      t.string :description
      t.string :author
      t.string :page_count
      t.date :published_date

      t.timestamps
    end
  end
end
