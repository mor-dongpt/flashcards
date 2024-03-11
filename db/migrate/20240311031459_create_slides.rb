class CreateSlides < ActiveRecord::Migration[7.1]
  def change
    create_table :slides do |t|
      t.string :slide_one
      t.string :slide_two
      t.references :card, null: false, foreign_key: true

      t.timestamps
    end
  end
end
