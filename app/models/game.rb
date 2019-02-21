class Game < ApplicationRecord
    belongs_to :user
    has_many :adventures, dependent: :destroy
    has_many :maps, dependent: :destroy
    has_many :stats, dependent: :destroy
    has_many :materials, dependent: :destroy
    has_many :races, dependent: :destroy
    has_many :weapon_classes, dependent: :destroy
    has_many :armor_classes, dependent: :destroy
    has_many :stat_effects, dependent: :destroy
    has_many :items, dependent: :destroy
    has_many :weapons, dependent: :destroy
    has_many :armors, dependent: :destroy
    has_many :spells, dependent: :destroy
    has_many :skills, dependent: :destroy
    has_many :icons, dependent: :destroy
end
