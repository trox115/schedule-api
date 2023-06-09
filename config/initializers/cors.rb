Rails.application.config.middleware.insert_before 0, Rack::Cors do
    allow do
      origins 'http://localhost:3002', 'https://deluxe-daifuku-66f877.netlify.app', 'https://antoniofernandes.com'
      resource '*', headers: :any, methods: [:get, :post]
    end
  end