class CreateStopovers < ActiveRecord::Migration[7.0]
  def change
    create_table :stopovers do |t|
      t.string :name
      t.string :image_url
      t.string :activity

      t.timestamps
    end
  end
end
