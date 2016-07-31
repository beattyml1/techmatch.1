class CreateMessageThreads < ActiveRecord::Migration
  def change
    create_table :message_threads do |t|
      t.string :title
      t.references :job, index: true
      t.references :user, index: true

      t.timestamps
    end
  end
end
