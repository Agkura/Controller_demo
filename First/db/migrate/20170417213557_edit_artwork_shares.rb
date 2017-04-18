class EditArtworkShares < ActiveRecord::Migration[5.0]
  def up
    add_column :artwork_shares, :artwork_id, :integer, null: false
    add_column :artwork_shares, :viewer_id, :integer, null: false

    add_index :artwork_shares, :artwork_id
    add_index :artwork_shares, :viewer_id
    add_index :artwork_shares, [:artwork_id, :viewer_id], unique: true
  end

  def down
    remove_column :artwork_shares, :artwork_id
    remove_column :artwork_shares, :viewer_id
  end
end
