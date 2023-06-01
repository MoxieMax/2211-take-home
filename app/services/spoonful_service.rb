# class SpoonfulService
# 
#   def self.get_data(url)
#     response = conn.get(url)
# 
#     JSON.parse(response.body, symbolize_names: true)
#   end
# 
#   private
#     def self.conn
#       Faraday.new(
#         url: "https://api.spoonacular.com/",
#         params: {
#           key: ENV['SPOON_KEY']
#         },
#         headers: { 'Content-Type' => 'application/json' }
#       )
#     end
# 
# end