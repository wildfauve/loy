class Link
  attr_accessor :uri, :rel, :desc
  
  def initialize(uri, rel)
    @uri = uri
    @rel = rel
  end
   
end