class CreateApis < ActiveRecord::Migration
  def change
    create_table :apis do |t|
      t.string :api_key

      t.timestamps null: false
    end
  end
end
