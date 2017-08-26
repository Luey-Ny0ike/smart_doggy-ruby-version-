json.extract! testimonial, :id, :title, :message, :created_at, :updated_at
json.url testimonial_url(testimonial, format: :json)
