RailsAdmin.config do |config|
  config.asset_source = :sprockets

  ### Popular gems integration

  ## == Devise ==
  config.authenticate_with do
    warden.authenticate! scope: :admin
  end
  config.current_user_method(&:current_admin)

  ## == CancanCan ==
  config.authorize_with :cancancan

  ## == Pundit ==
  # config.authorize_with :pundit

  ## == PaperTrail ==
  # config.audit_with :paper_trail, 'User', 'PaperTrail::Version' # PaperTrail >= 3.0.0

  ### More at https://github.com/railsadminteam/rails_admin/wiki/Base-configuration

  ## == Gravatar integration ==
  ## To disable Gravatar integration in Navigation Bar set to false
  # config.show_gravatar = true

  config.actions do
    dashboard                     # mandatory
    index                         # mandatory
    new
    export
    bulk_delete
    show
    edit
    delete
    show_in_app

    ## With an audit adapter, you can add:
    # history_index
    # history_show
  end

  config.model "Admin" do
    list do
      field :id
      field :name
      field :super_admin
      field :email
      field :reset_password_token
      field :reset_password_sent_at
      field :created_at do
        # date_format :short
        strftime_format "%Y-%m-%d"
      end
    end
  end

  config.model "Card" do
    list do
      field :id
      field :name
      field :deck
      field :slides
      field :created_at do
        # date_format :short
        strftime_format "%Y-%m-%d"
      end
    end
  end

  config.model "Deck" do
    list do
      field :id
      field :name
      field :cards
      field :created_at do
        # date_format :short
        strftime_format "%Y-%m-%d"
      end
    end
  end

  config.model "Slide" do
    list do
      field :id
      field :slide_one
      field :slide_two
      field :card
      field :created_at do
        # date_format :short
        strftime_format "%Y-%m-%d"
      end
    end
  end
end
