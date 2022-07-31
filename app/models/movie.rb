# == Schema Information
#
# Table name: movies
#
#  id         :integer          not null, primary key
#  date       :date
#  platform   :string
#  review     :text
#  title      :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Movie < ApplicationRecord

    validates :title, presence: true, uniqueness: true

    has_one_attached :cover
    

end