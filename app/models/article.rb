class Article < ActiveRecord::Base
  belongs_to :user

  attr_accessor :keywords

  @@alchemy_url ||= ENV["ALCHEMY_URL"]

  def author
    user ? user.email : "N/A"
  end

  def owned_by?(user)
    self.user_id == user.id
  end

  def get_keywords
    # res = Typhoeus.get(@@alchemy_url, params: {
    #   apikey: ENV["ALCHEMY_APIKEY"],
    #   text: content,
    #   maxRetrieve: 10,
    #   outputMode: "json"
    # })
    # words = JSON.parse(res.body)["keywords"].map do |w|
    #   w['text']
    # end
    # @keywords = words.join(" | ")
    @keywords = "not yet implemented"
  end

end
