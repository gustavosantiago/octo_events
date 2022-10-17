class CreateWebhooks < ActiveRecord::Migration[7.0]
  def change
    create_table :webhooks do |t|
      t.string :event, null: false
      t.text :payload, null: false

      t.timestamps
    end

    add_index :webhooks, :event
    add_index :webhooks, :payload
    add_index :webhooks, %i[event payload]
  end
end
