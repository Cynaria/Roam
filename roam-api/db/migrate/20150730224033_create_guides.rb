class CreateGuides < ActiveRecord::Migration
  def change
    create_table :guides do |t|
      t.string :name
      t.text :description
      t.belongs_to :creator
      t.float :center_lat
      t.float :center_lng

      t.timestamps null: false
    end
  end
end
