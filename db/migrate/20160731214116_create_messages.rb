class CreateMessages < ActiveRecord::Migration
  def change
    create_table :messages do |t|
      t.references :message_thread, index: true
      t.references :user, index: true

      t.timestamps
    end
  end
end
