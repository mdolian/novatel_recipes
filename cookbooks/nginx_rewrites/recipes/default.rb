if ['app_master', 'app', 'util', 'solo'].include?(node[:instance_role])
  node[:applications].each do |app, data|
    template "/etc/nginx/servers/Novatel.conf"do
      source 'Novatel.conf.erb'
      owner node[:owner_name]
      group node[:owner_name]
      mode 0655
      backup 0
    end
  end
end
