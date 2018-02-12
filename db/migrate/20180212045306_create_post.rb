class CreatePost < ActiveRecord::Migration[5.1]
  def change
    create_table :posts do |t|
      t.string :title
      t.string :first
      t.string :post
      t.string :content
      t.string :asdfsdfsfdf
    end
  end
end
