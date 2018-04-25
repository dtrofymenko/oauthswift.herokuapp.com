# encoding: utf-8

get "/callback/:scheme" do
  path_query = "#{path}?#{request.query_string}"
  url = "#{scheme}://oauth-callback#{path_query}"
  puts url
  redirect url
end
