class CreateTweets < ActiveRecord::Migration[6.0]
  def change
    create_table :tweets do |t|
      t.string :title,    null:false, default: ''
      t.text :text,       null: false
      t.references :user, null:false

      t.timestamps
    end
  end
end
