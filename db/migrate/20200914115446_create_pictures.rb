class CreatePictures < ActiveRecord::Migration[5.2]
  def change
    create_table :pictures do |t|
      t.references :user, foreign_key: true
      t.references :title, foreign_key: true
      t.string :img
      t.datetime :created_at

      t.timestamps
    end
  end
end
