class Article < ApplicationRecord
validation :title, presence: true, length: {minimum:3 , maximum: 50}
validation :description, presence: true, length: {minimum:3 , maximum: 50}
end