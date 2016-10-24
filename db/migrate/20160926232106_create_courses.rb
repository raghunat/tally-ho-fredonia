class CreateCourses < ActiveRecord::Migration
  def change
    create_table :courses do |t|
      t.string :name
      t.integer :number
      t.integer :section
      t.belongs_to :semesters
      t.integer :max_students
      t.belongs_to :departments

      t.timestamps null: false
    end
  end
end
