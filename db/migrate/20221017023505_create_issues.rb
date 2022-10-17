class CreateIssues < ActiveRecord::Migration[7.0]
  def change
    create_table :issues do |t|
      t.text :payload, null: false

      t.timestamps
    end
  end
end
