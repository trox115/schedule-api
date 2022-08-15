Rails.application.config.middleware.insert_before 0, Rack::Cors do
    allow do
      origins 'http://localhost:3000', 'https://deluxe-daifuku-66f877.netlify.app/'
      resource '*', headers: :any, methods: [:get, :post]
    end
  end