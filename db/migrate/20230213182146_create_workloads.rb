class CreateWorkloads < ActiveRecord::Migration[7.0]
  def change
    create_table :workloads do |t|
      t.belongs_to :student, null: false, foreign_key: true
      t.belongs_to :course, null: false, foreign_key: true

      t.timestamps
    end
  end
end
