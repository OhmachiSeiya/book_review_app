class CreateReviews < ActiveRecord::Migration[6.1]
  def change
    create_table :reviews do |t|
      t.string :title
      t.datetime :published
      t.string :author
      t.integer :category_id
      t.integer :score
      t.text :content

      t.timestamps
    end
  end
end
