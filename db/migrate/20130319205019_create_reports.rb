class CreateReports < ActiveRecord::Migration
  def change
    create_table :reports do |t|
      t.string :name
      t.text :current_activities
      t.text :next_activities

      t.timestamps
    end
  end
end
