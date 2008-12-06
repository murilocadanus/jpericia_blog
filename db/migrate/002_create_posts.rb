class CreatePosts < ActiveRecord::Migration
  def self.up
    create_table :posts do |t|
      t.string :post_title
      t.text :post_text
      t.date :date_of_creation
      t.integer :category_id

      t.timestamps
    end
  end

  def self.down
    drop_table :posts
  end
end
