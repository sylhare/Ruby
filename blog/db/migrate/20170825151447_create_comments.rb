class CreateComments < ActiveRecord::Migration[5.0]
  def change
    create_table :comments do |t|
      t.string :commenter
      t.text :body
      # Creates a new column on your database table called article_id (the provided model namewith _id) that can hold integer values, a foreign key constraint that points to the id column of the articles table
      t.references :article, foreign_key: true

      t.timestamps
    end
  end
end
