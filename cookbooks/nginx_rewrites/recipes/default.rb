if ['app_master', 'app', 'util', 'solo'].include?(node[:instance_role])
  node[:applications].each do |app, data|
    remote_file "/etc/nginx/servers/Novatel/additional_location_blocks.customer"do
      source 'additional_location_blocks.customer'
      owner node[:owner_name]
      group node[:owner_name]
      mode 0655
      backup 0
    end
  end
end
