logdir = node['wt_common']['logdir']

directory logdir do
	action :create
end

windows_package "WebTrends Common Lib" do
        source "#{Chef::Config[:file_cache_path]}\\#{msi_name}"
        options "/l*v \"#{logdir}\\#{msi_name}-Uninstall.log\""
        action :remove
end