
default['authorization'] = 
{
	"sudo" =>
	{
		"groups" => ["root", "adm", "sudo", "sysadmin"],
		"users" => ["srvadm", "sysadmin" ],
		"passwordless" => "true",
		"package_name" => "sudo"
	}
}


default['openssh'] => 
{
	"client" =>
	{
		"localhost" => 
		{
			"user_known_hosts_file": "/dev/null",
			"strict_host_key_checking": "no"
		},

		"127.0.0.1" => 
		{
			"user_known_hosts_file": "/dev/null",
			"strict_host_key_checking": "no"
		}
	},

	"server" =>
	{
		"subsystem" => ["sftp /usr/lib/sftp-server"]
	}

}


default['apt_periodic'] => 
{
	"unattended_upgrade_interval" => "1",

	"unattended_upgrades" =>
	{
		"mail" : "root",
		"allowed_origins" => 
		[
			"${distro_id}:${distro_codename}-security",
			"trusty:nginx"
		]

	}

}


