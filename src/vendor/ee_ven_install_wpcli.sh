# Install WP-CLI

function ee_ven_install_wpcli()
{
	if [ ! -f /usr/bin/wp ]; then
		ee_lib_echo "Downloading WP-CLI, please wait..."
		wget -qO /usr/bin/wp https://github.com/wp-cli/wp-cli/releases/download/v${EE_WP_CLI_VERSION}/wp-cli.phar \
		|| ee_lib_error "Unable to download WP-CLI, exit status = " $?

		# Executable permission
		chmod a+x /usr/bin/wp \
		|| ee_lib_error "Unable to set executable permission for wp-cli, exit status = " $?

		# Download auto completion
		wget -qO /etc/bash_completion.d/wp-completion.bash https://raw.githubusercontent.com/wp-cli/wp-cli/v${EE_WP_CLI_VERSION}/utils/wp-completion.bash
	fi
}
