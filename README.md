### Docker Ubuntu 14.04 Phusion x64 Base Image

This bootstrap bash script will update `apt-get` to latest, update `docker` to the latest and enable it in `systemctl`. It will also make directory for `docker_registry`. Also will add `ruby` and `rvm` for development.


#### Instructions
- Requires `vagrant` on main machine (for development)
- For production, run only `bootstrap.sh`
