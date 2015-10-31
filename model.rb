configure :development, :test do
  ActiveRecord::Base.configurations = YAML.load_file('config/database.yml')
end

configure :production do
  ActiveRecord::Base.establish_connection(ENV['DATABASE_URL'] || 'postgres://localhost/mydb')
end
