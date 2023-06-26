class CreateDiaries < ActiveRecord::Migration[6.0]
  def change
    create_table :diaries do |t|
      t.text     :content
      t.text     :image
      t.datetime :datetime
      t.integer  :emotion
      t.integer  :score
      t.timestamps
    end
  end
end
