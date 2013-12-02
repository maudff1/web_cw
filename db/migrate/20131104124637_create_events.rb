class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.date :date
      t.string :logo
      t.text :title

      t.timestamps
    end
  end
end
