module DryResponse
  def dry_response(object)
    JSON.parse(response.body)[object]
  end
end
