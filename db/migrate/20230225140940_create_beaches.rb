class CreateBeaches < ActiveRecord::Migration[7.0]
  def change
    create_table :beaches do |t|
      t.string :name
      t.text :description
      t.references :location, null: false, foreign_key: true

      t.timestamps
    end
  end
end
