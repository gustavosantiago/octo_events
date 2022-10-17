class CreateIssues < ActiveRecord::Migration[7.0]
  def change
    create_table :issues do |t|
      t.string :hook_id, null: false
      t.text :hook, null: false

      t.timestamps
    end
  end
end
