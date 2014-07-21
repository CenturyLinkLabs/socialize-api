class CreateGithubItems < ActiveRecord::Migration
  def change
    create_table :github_items do |t|
      t.string :title
      t.text :content

      t.timestamps
    end
  end
end
