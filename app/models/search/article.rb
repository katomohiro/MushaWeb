class Search::Article < Search::Base
  require_dependency "article.rb"
  
  ATTRIBUTES = %i(
    title
    industry_ids
    occupation_ids
  )
  
  attr_accessor(*ATTRIBUTES)
  
  def search
    results = Article.title_like(self.title) if self.title.present?
    results = Article.has_industry_ids_in(self.industry_ids) if self.industry_ids.present?
    results = Article.has_occupation_ids_in(self.occupation_ids) if self.occupation_ids.present?
    return results
  end
  
end