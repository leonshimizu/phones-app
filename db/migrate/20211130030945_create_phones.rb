class CreatePhones < ActiveRecord::Migration[6.1]
  def change
    create_table :phones do |t|
      t.string :maker
      t.integer :version
      t.string :color

      t.timestamps
    end
  end
end
