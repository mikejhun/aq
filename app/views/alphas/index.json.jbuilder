json.array!(@alphas) do |alpha|
  json.extract! alpha, :id, :name, :email, :degree, :college
  json.url alpha_url(alpha, format: :json)
end
