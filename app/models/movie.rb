# == Schema Information
#
# Table name: movies
#
#  id         :integer          not null, primary key
#  date       :date
#  platform   :string
#  review     :text
#  slug       :string
#  title      :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
# Indexes
#
#  index_movies_on_slug  (slug) UNIQUE
#
class Movie < ApplicationRecord

    extend FriendlyId
    friendly_id :title, use: :slugged

    validates :title, presence: { message: 'El titulo es requerido.'}, uniqueness: true
    validates :review, presence: { message: 'La reseña es requerida.'}

    has_one_attached :cover
    
    has_many :movie_categories
    has_many :categories, through: :movie_categories
    has_many :comments, -> { order(created_at: :desc) }

    accepts_nested_attributes_for :categories

    def category_default
        return self.categories.first.name if self.categories.any?
        ''
    end

end
