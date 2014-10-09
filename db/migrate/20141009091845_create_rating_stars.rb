class CreateRatingStars < ActiveRecord::Migration
  def change
    create_table :rating_stars do |t|
      t.references :user, index: true
      t.references :post
      t.integer :score
     

      t.timestamps
    end
  end
end
