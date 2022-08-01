# == Schema Information
#
# Table name: comments
#
#  id         :integer          not null, primary key
#  content    :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  movie_id   :integer          not null
#
# Indexes
#
#  index_comments_on_movie_id  (movie_id)
#
# Foreign Keys
#
#  movie_id  (movie_id => movies.id)
#
require "test_helper"

class CommentTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end