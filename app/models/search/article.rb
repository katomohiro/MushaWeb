class Search::Article < Search::Base
  
  ATTRIBUTES = %i(
    title
    industry_ids
    occupation_ids
  )
  
  attr_accessor(*ATTRIBUTES)
  
  def search
    results = Article.title_like(self.title)
    results = Article.has_industry_ids_in(self.industriy_ids)
    results = Article.has_occupation_ids_in(self.occupation_ids)
    return results
  end
  
end