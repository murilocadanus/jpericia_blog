class CreateCategories < ActiveRecord::Migration
  def self.up
    create_table :categories do |t|
      t.string :category_name
      t.string :link
      t.timestamps
    end
  end

  def self.down
    drop_table :categories
  end
end
