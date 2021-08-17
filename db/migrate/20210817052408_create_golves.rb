class CreateGolves < ActiveRecord::Migration[6.0]
  def change
    create_table :golfs do |t|
      t.string   :golf_course_name,         null: false
      t.string   :postal_code,              null: false
      t.integer  :bith_place_id,            null: false
      t.string   :municipalities,           null: false
      t.string   :address,                  null: false
      t.string   :golf_course_number,       null: false
      t.string   :business_hours,           null: false
      t.integer  :play_environment_id,      null: false
      t.integer  :golf_course_difficult_id, null: false
      t.integer  :average_amount_id,        null: false
      t.integer  :travel_time_id,           null: false
      t.text     :explanation,              null: false
      t.integer  :cart_information_id,      null: false
      t.references :user, null: false, foreign_key: true
      t.timestamps
    end
  end
end
