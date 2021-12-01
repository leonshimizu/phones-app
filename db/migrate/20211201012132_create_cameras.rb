class CreateCameras < ActiveRecord::Migration[6.1]
  def change
    create_table :cameras do |t|
      t.integer :lens_size
      t.string :description
      t.float :mega_pixels

      t.timestamps
    end
  end
end
