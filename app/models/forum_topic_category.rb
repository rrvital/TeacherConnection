class ForumTopicCategory < ApplicationRecord
  belongs_to :forum_topic
  belongs_to :category
end
