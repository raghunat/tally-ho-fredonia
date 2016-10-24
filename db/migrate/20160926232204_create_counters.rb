class CreateCounters < ActiveRecord::Migration
  def change
    create_table :counters do |t|
      t.belongs_to :courses
      t.belongs_to :users
      t.timestamps null: false
    end
  end
end
