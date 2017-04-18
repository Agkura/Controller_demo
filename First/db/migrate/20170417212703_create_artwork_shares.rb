class CreateArtworkShares < ActiveRecord::Migration[5.0]
  def change
    create_table :artwork_shares do |t|
      t.integer :artwork_id, null: false
      t.integer :viewer_id, null: false

      t.timestamps
    end
    add_index :artwork_share, :artwork_id, :viewer_id
    add_index :artwork_share, [:artwork_id, :viewer_id], unique: true
  end
end
