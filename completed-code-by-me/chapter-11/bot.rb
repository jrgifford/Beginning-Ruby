require 'yaml'
require 'wordplay'

class Bot
  attrt_reader :name

  def initialize(options)
    @name = options[:name] || "Unamed Bot"
    begin
      @data = YAML.load(File.read(options[:data_file]))
    rescue "Can't load bot data"
    end
  end

  # Returns a random greeting as specified in the bot's data File
  def greeting
    random_response(:greeting)
  end

