class CreateSports < ActiveRecord::Migration[6.0]
  def change
    create_table :sports do |t|
      t.string     :title            , null: false
      t.text       :sport_text       , null: false
      t.integer    :category_id      , null: false
      t.integer    :area_id          , null: false
      t.string     :price            , null: false
      t.references :user             , null: false, foreign_key: true


      t.timestamps
    end
  end
end
