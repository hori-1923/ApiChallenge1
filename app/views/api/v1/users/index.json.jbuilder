json.array!(@users) do |user|
  json.extract! user, :uuid, :name
  #json.foo 'bar'
  #json.current_time Time.now

  #json.foo 'ver'
  #json.set! :posts do
  #	json.extract! post, :title, :name, :body
  #	json.foo 'bar'
  #	json.current_time Time.now
  #end
end