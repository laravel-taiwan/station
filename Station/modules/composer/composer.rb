class Composer

    attr_accessor :config, :args, :scripts

    def initialize(config, args, module_path)
        @config = config
        @args = args
        @scripts = module_path + "/scripts"
    end

    def install

    end

    def update
        @config.vm.provision "shell" do |s|
            s.inline = "sudo composer self-update"
        end
    end

    def provision

        # todo: install composer composer command

        # update composer
        if (args['update'] == true)
            update
        end
    end
end