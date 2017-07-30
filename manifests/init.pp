class sngrep {
	include repos::irontec
	package {'sngrep':			
		ensure	=> 'installed',
		require	=> Exec['install_irontec_key']
	}
}
