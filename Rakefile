desc "Run server"
    task :default => :use_keys do
      sh "rackup"
end
desc "Save config.yml out of the CVS"
task :keep_secrets do
  sh "cp config/config_template.yml config/config.yml "
end
desc "Use the filled client_secrets"
    task :use_keys do
      sh "cp config/config_filled.yml config/config.yml"
end
