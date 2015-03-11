ThinkingSphinx::Index.define :article, :with => :active_record do
  # fields
  indexes subject, :sortable => true
  indexes content
  indexes author.name, :as => :author, :sortable => true

  # attributes
  has author_id, created_at, updated_at
end