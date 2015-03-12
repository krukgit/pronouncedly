class CreateRecordings < ActiveRecord::Migration
  def change
    create_table :recordings do |t|
      t.belongs_to :user
      t.belongs_to :passage
      t.attachment :file
      t.string :type
      t.float :score
      t.timestamps
    end
  end
end
