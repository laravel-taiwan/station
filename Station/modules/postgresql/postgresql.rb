class Postgresql < StationModule

  def contrib(version)
    shell_provision("sudo apt-get -y install postgresql-contrib-#{version}")
  end

  def create_db(name, user)
    shell_provision("sudo -u postgres createdb -O #{name} #{user} || true")
  end

  def create_user(username)
    shell_provision("sudo -u postgres createuser -s #{username} || true")
  end

  def create_password(username, password)
    shell_provision("sudo -u postgres psql --command \"ALTER USER #{username} with password '#{password}';\"")
  end

  def provision

    # Install postgresql contrib
    if args.find?('contrib.install', false)
      contrib(args.find?('contrib.version', '9.3') )
    end

    # Install databases
      args.find?('databases', []).each do |db|

        #create user
        if db.has_key?("user") && db.has_key?("password")
          create_user(db["user"])
          create_password(db["user"], db["password"])
        end

        if db.has_key?("name")
          create_db(db["name"], db.find?('user', 'homestead'))
        end

      end

  end

end