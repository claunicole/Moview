# == Schema Information
#
# Table name: movie_categories
#
#  id          :bigint           not null, primary key
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  category_id :bigint           not null
#  movie_id    :bigint           not null
#
# Indexes
#
#  index_movie_categories_on_category_id  (category_id)
#  index_movie_categories_on_movie_id     (movie_id)
#
# Foreign Keys
#
#  fk_rails_...  (category_id => categories.id)
#  fk_rails_...  (movie_id => movies.id)
#
require "test_helper"

class MovieCategoryTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
