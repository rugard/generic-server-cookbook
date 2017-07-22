
default['authorization'] = 
{
	'sudo' =>
	{
		'groups' => ["root", "adm", "sudo", "sysadmin"],
		'users' => ["srvadm", "sysadmin" ],
		'passwordless' => "true",
		'package_name' => "sudo",
		'sudoers_defaults' => ['env_reset','secure_path="/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin"'],
		'command_aliases' => [{ name: 'SYSTEM', command_list:['/sbin/reboot'] }],
		'custom_commands' => 
		{
			'users' : [{}],
			'groups' : [{}]
		}
	}
}


default['openssh'] = 
{
	"package_name" => %w(openssh-client openssh-server),

	"client" =>
	{
		"localhost" => 
		{
			"user_known_hosts_file" => "/dev/null",
			"strict_host_key_checking" => "no"
		},

		"127.0.0.1" => 
		{
			"user_known_hosts_file" => "/dev/null",
			"strict_host_key_checking" => "no"
		}
	},

	"server" =>
	{
		"address_family" => "inet",
		"subsystem" => ["sftp /usr/lib/sftp-server"],
		"password_authentication" => "no"
	}

}


default['apt_periodic']  
{
	"unattended_upgrade_interval" => "1",

	"unattended_upgrades" =>
	{
		"mail" => "root",
		"allowed_origins" => 
		[
			"${distro_id}:${distro_codename}-security",
			"trusty:nginx",
			"xenial:nginx"
		]

	}

}


