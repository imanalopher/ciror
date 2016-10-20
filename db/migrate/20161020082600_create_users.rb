class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :provider
      t.string :uid
      t.string :name
      t.string :login
      t.string :avatar_id
      t.string :url
      t.string :html_url
      t.string :repos_url
      t.boolean :site_admin
      t.string :name
      t.string :company
      t.string :blog
      t.string :email
      t.string :bio
      t.integer :public_repos
      t.integer :public_gists
      t.integer :followers
      t.integer :following

      t.timestamps null: false
    end
  end
end
