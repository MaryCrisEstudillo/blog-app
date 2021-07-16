class CreateMyBlogs < ActiveRecord::Migration[6.1]
  def change
    create_table :my_blogs do |t|
      t.string :author
      t.string :title
      t.text :description
      t.text :topics

      t.timestamps
    end
  end
end
