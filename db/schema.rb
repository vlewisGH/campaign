# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2019_02_16_222413) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "adventures", force: :cascade do |t|
    t.string "name"
    t.bigint "character_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "game_id"
    t.index ["character_id"], name: "index_adventures_on_character_id"
    t.index ["game_id"], name: "index_adventures_on_game_id"
  end

  create_table "armor_classes", force: :cascade do |t|
    t.string "name"
    t.decimal "defense_modifier"
    t.decimal "weight_modifier"
    t.string "body_part", array: true
    t.bigint "game_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["game_id"], name: "index_armor_classes_on_game_id"
  end

  create_table "armors", force: :cascade do |t|
    t.string "name"
    t.bigint "armor_class_id"
    t.bigint "material_id"
    t.bigint "stat_effect_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "game_id"
    t.index ["armor_class_id"], name: "index_armors_on_armor_class_id"
    t.index ["game_id"], name: "index_armors_on_game_id"
    t.index ["material_id"], name: "index_armors_on_material_id"
    t.index ["stat_effect_id"], name: "index_armors_on_stat_effect_id"
  end

  create_table "characters", force: :cascade do |t|
    t.string "name"
    t.string "gender"
    t.integer "exp"
    t.bigint "right_hand_weapon"
    t.bigint "left_hand_weapon"
    t.bigint "head"
    t.bigint "body"
    t.bigint "arms"
    t.bigint "hands"
    t.bigint "legs"
    t.bigint "feet"
    t.bigint "race_id"
    t.bigint "stat_id"
    t.bigint "weapon_id"
    t.bigint "armor_id"
    t.bigint "item_id"
    t.bigint "spell_id"
    t.bigint "skill_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["armor_id"], name: "index_characters_on_armor_id"
    t.index ["item_id"], name: "index_characters_on_item_id"
    t.index ["race_id"], name: "index_characters_on_race_id"
    t.index ["skill_id"], name: "index_characters_on_skill_id"
    t.index ["spell_id"], name: "index_characters_on_spell_id"
    t.index ["stat_id"], name: "index_characters_on_stat_id"
    t.index ["weapon_id"], name: "index_characters_on_weapon_id"
  end

  create_table "damage_effects", force: :cascade do |t|
    t.string "name"
    t.integer "base_damage"
    t.string "element"
    t.integer "duration"
    t.bigint "game_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["game_id"], name: "index_damage_effects_on_game_id"
  end

  create_table "games", force: :cascade do |t|
    t.string "name"
    t.text "lore"
    t.string "genre", array: true
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_games_on_user_id"
  end

  create_table "icons", force: :cascade do |t|
    t.string "name"
    t.string "type"
    t.string "image"
    t.string "worldspace"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "game_id"
    t.index ["game_id"], name: "index_icons_on_game_id"
  end

  create_table "items", force: :cascade do |t|
    t.string "name"
    t.string "type"
    t.bigint "material_id"
    t.bigint "stat_effect_id"
    t.bigint "game_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["game_id"], name: "index_items_on_game_id"
    t.index ["material_id"], name: "index_items_on_material_id"
    t.index ["stat_effect_id"], name: "index_items_on_stat_effect_id"
  end

  create_table "maps", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "name"
    t.string "map_type"
    t.integer "scale"
    t.string "image"
    t.bigint "game_id"
    t.index ["game_id"], name: "index_maps_on_game_id"
  end

  create_table "materials", force: :cascade do |t|
    t.string "name"
    t.decimal "physical_resistance"
    t.decimal "fire_resistance"
    t.decimal "lightning_resistance"
    t.decimal "ice_resistance"
    t.decimal "water_resistance"
    t.decimal "earth_resistance"
    t.decimal "dark_resistance"
    t.decimal "magic_resistance"
    t.bigint "game_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["game_id"], name: "index_materials_on_game_id"
  end

  create_table "races", force: :cascade do |t|
    t.string "name"
    t.string "lore"
    t.integer "starting_strength"
    t.integer "starting_perception"
    t.integer "starting_agility"
    t.integer "starting_charisma"
    t.integer "starting_dexterity"
    t.integer "starting_intelligence"
    t.integer "starting_wisdom"
    t.integer "starting_constitution"
    t.bigint "game_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["game_id"], name: "index_races_on_game_id"
  end

  create_table "skills", force: :cascade do |t|
    t.string "name"
    t.string "target"
    t.integer "area_of_effect"
    t.integer "range"
    t.integer "number_of_attacks"
    t.string "animation"
    t.string "weapon_class_restrictions", array: true
    t.integer "times_used"
    t.bigint "stat_effect_id"
    t.bigint "game_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["game_id"], name: "index_skills_on_game_id"
    t.index ["stat_effect_id"], name: "index_skills_on_stat_effect_id"
  end

  create_table "spells", force: :cascade do |t|
    t.string "name"
    t.string "target"
    t.bigint "damage_effect_id"
    t.bigint "game_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "area_of_effect"
    t.integer "times_used"
    t.integer "range"
    t.index ["damage_effect_id"], name: "index_spells_on_damage_effect_id"
    t.index ["game_id"], name: "index_spells_on_game_id"
  end

  create_table "stat_effects", force: :cascade do |t|
    t.string "name"
    t.string "stat"
    t.integer "adjustment"
    t.bigint "game_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "duration"
    t.index ["game_id"], name: "index_stat_effects_on_game_id"
  end

  create_table "stats", force: :cascade do |t|
    t.integer "strength"
    t.integer "perception"
    t.integer "agility"
    t.integer "charisma"
    t.integer "dexterity"
    t.integer "intelligence"
    t.integer "wisdom"
    t.integer "constitution"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "game_id"
    t.index ["game_id"], name: "index_stats_on_game_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "username"
    t.string "photo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "password_digest"
  end

  create_table "weapon_classes", force: :cascade do |t|
    t.string "name"
    t.decimal "damage_modifier"
    t.integer "reach"
    t.decimal "weight_modifier"
    t.boolean "two_handed"
    t.bigint "game_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["game_id"], name: "index_weapon_classes_on_game_id"
  end

  create_table "weapons", force: :cascade do |t|
    t.string "name"
    t.bigint "weapon_class_id"
    t.bigint "material_id"
    t.bigint "damage_effect_id"
    t.bigint "icon_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "game_id"
    t.index ["damage_effect_id"], name: "index_weapons_on_damage_effect_id"
    t.index ["game_id"], name: "index_weapons_on_game_id"
    t.index ["icon_id"], name: "index_weapons_on_icon_id"
    t.index ["material_id"], name: "index_weapons_on_material_id"
    t.index ["weapon_class_id"], name: "index_weapons_on_weapon_class_id"
  end

  add_foreign_key "adventures", "games"
  add_foreign_key "armors", "games"
  add_foreign_key "maps", "games"
  add_foreign_key "stats", "games"
  add_foreign_key "weapons", "games"
end
