# encoding: utf-8

get "/callback/:scheme" do
  scheme = params[:scheme]
  path = request.path.gsub("/#{scheme}","")
  path_query = "#{path}?#{request.query_string}"
  url = "#{scheme}://#{path_query}"
  puts url
  redirect url
end
