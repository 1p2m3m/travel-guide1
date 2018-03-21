class CreateLocations < ActiveRecord::Migration[5.2]
  def change
    create_table :locations do |t|
      t.string :title
      t.string :subtitle
      t.string :header_image
      t.string :description

      t.timestamps
    end
  end
end
