class CreateTweets < ActiveRecord::Migration
  def change
    create_table :tweets do |t|
      t.string :message
      t.datetime :date

      t.timestamps
    end
  end
end
