class CreateDepartments < ActiveRecord::Migration
  def change
    create_table :departments do |t|
      t.string :name
      t.belongs_to :schools

      t.timestamps null: false
    end
  end
end
