class CreateRuns < ActiveRecord::Migration[6.1]
  def change
    create_table :runs do |t|
      t.string :name
      t.string :location
      t.date :date 
      t.string :time 
      t.timestamps
    end
  end
end
