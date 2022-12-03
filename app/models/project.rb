class Project < ApplicationRecord
  has_rich_text :content
  enum kind: {system: 0, website: 1}

  validates :title, presence: true
  validates :kind, presence: true
  validates :resume, presence: true
  validates :content, presence: true
end
