# == Schema Information
#
# Table name: movies
#
#  id         :bigint           not null, primary key
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
require "test_helper"

class MovieTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
