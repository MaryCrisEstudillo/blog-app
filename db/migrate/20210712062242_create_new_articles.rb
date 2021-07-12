class CreateNewArticles < ActiveRecord::Migration[6.1]
  def change
    create_table :new_articles do |t|
      t.string :name
      t.text :body

      t.timestamps
    end
  end
end
