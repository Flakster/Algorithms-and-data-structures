# Get the info from the API and return a list of authors with a submission count strictly 
# higher than the threshold

require 'net/http'
require 'json'

def getUsernames(threshold)
    # Write your code here
    arr = []
    page = 1
    url = "https://jsonmock.hackerrank.com/api/article_users?page=#{page}"
    uri = URI(url)
    response = Net::HTTP.get(uri)
    results = JSON.parse(response.to_s)
    data = results['data']
    while data.length > 0 
      data.each do |e|
        arr << e['username'] if e['submission_count'] > threshold
      end
      page += 1
      url = "https://jsonmock.hackerrank.com/api/article_users?page=#{page}"
      uri = URI(url)
      response = Net::HTTP.get(uri)
      results = JSON.parse(response.to_s)
      data = results['data']  
    end
    return arr
end

p getUsernames(10)