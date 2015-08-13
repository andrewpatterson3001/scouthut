# require 'mechanize'

# agent = Mechanize.new

# page = agent.get('http://www.boyscouttrail.com/boy-scouts/bsa-merit-badges.asp')

# # page.links.each do |link|
# #   puts link.text
# # end
# pp page

#FOR ALL LINKS BELOW, need to prepend 'http://www.boyscouttrail.com/'
#Returns all the badge names
def extract_badgenames()
@badgenames_array = []
  file = File.open('app/assets/post.html')
  doc = Nokogiri::HTML(file)
  doc.search('.mb_div > a').map do |element|
   @badgenames_array << element.inner_text
  end
   return @badgenames_array
end

#Returns all the links for badge images
def extract_badgeimages()
@badgeimages_array = []
  file = File.open('app/assets/post.html')
  doc = Nokogiri::HTML(file)
  doc.search('.mb_div a img').map do |element|
    image_url = 'http://www.boyscouttrail.com' + element['src']
    @badgeimages_array << image_url
  end
    return @badgeimages_array
end


#Returns all the links for badge criteria
def extract_badgecriteria()
@badgecriteria_array = []
  file = File.open('app/assets/post.html')
  doc = Nokogiri::HTML(file)
  doc.search('.mb_div a').map do |element|
   criteria_url = "http://www.boyscouttrail.com/boy-scouts/" + element['href']
   @badgecriteria_array << criteria_url
  end
  return @badgecriteria_array
end



