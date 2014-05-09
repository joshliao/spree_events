class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :title
      t.text :body
      t.boolean :published
      t.datetime :date

      t.timestamps
    end
  end
end
