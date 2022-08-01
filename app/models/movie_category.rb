# == Schema Information
#
# Table name: movie_categories
#
#  id          :integer          not null, primary key
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  category_id :integer          not null
#  movie_id    :integer          not null
#
# Indexes
#
#  index_movie_categories_on_category_id  (category_id)
#  index_movie_categories_on_movie_id     (movie_id)
#
# Foreign Keys
#
#  category_id  (category_id => categories.id)
#  movie_id     (movie_id => movies.id)
#
class MovieCategory < ApplicationRecord
  belongs_to :movie
  belongs_to :category
end
