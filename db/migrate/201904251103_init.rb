class Init < ActiveRecord::Migration[5.2]
  def change
    create_table :messages do |t|
      t.string :type
      t.text :data
      t.text :metadata
      t.timestamp :date
    end
  end
end