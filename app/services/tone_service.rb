class ToneService
  def self.conn
    Faraday.new("https://api.us-south.tone-analyzer.watson.cloud.ibm.com/instances/d439c98c-b80a-463e-89da-ce041a83c762") do |connection|
      connection.basic_auth('apikey', ENV['TONE_KEY'] )
    end
  end

  def self.get_tones(poem)
    response = conn.get("/v3/tone?version=2017-09-21&text=#{poem}")

    JSON.parse(response.body, symbolize_names: true)[:document_tone][:tones]
  end
end
