class AddImagesToPosts < ActiveRecord::Migration[5.0]
  def change
    add_column :posts, :images, :json
  end
end
