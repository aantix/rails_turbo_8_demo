class CreateBlogs < ActiveRecord::Migration[7.0]
  def change
    create_table :blogs do |t|
      t.string :name
      t.references :user, null: false, foreign_key: false

      t.timestamps
    end
  end
end
