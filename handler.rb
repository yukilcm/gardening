require 'json'
require 'octokit'

def hello(event:, context:)
  access_token = ENV["GITHUB_ACCESS_TOKEN"]
  client = Octokit::Client.new(:access_token => access_token)
  repo = 'yukilcm/gardening'

  # create title, body, label
  title = 'Hello, Ruby'
  body = 'Hello, Rails'
  labels = "Greeting Messsage"

  # create github issue
  client.create_issue(repo, title, body, {labels: labels})
end
