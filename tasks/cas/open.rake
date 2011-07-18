namespace :open do
  desc "Open Jira ticket if there is one."
  task :jira do
    jira = Dir.pwd.split("/").last
    
    if jira.to_i == 0
      puts "I can't find the jira number unless it's in the project folder name."
    else
      url = "https://issues.jasig.org/browse/CAS-#{jira}"
      system "open -a Firefox #{url}"
    end
  end
end