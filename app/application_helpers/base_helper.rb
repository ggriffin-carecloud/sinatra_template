module BaseHelper

  def logger
    return Log4r::Logger['logger']
  end

  def load_yaml(path)
    YAML.load(File.open(path))[ENV['RACK_ENV']]
  end
end