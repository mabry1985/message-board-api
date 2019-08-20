class AddMessagesTable < ActiveRecord::Migration[5.2]
  def change
    create_table :messages do |t|
      t.string :title
      t.string :author
      t.text :body

      t.timestamps

      t.belongs_to :group, foreign_key: true
    end
  end
end
