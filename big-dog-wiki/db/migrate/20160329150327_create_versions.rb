class CreateVersions < ActiveRecord::Migration
  def change
    create_table :versions do |t|
      t.string :title
      t.text :content
      t.boolean :published
      t.references :article, index: true
      t.references :editor, index: true

      t.timestamps null: false
    end
  end
end
