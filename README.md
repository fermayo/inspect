# fermayo/inspect
Quick and dirty tool to 'sh' into any docker image

## Usage

	docker run -it --rm -v /var/run/docker.sock:/var/run/docker.sock fermayo/inspect <image>

For example:

	$ docker run -it --rm -v /var/run/docker.sock:/var/run/docker.sock fermayo/inspect alpine:latest
	/run/image # cat etc/os-release
	NAME="Alpine Linux"
	ID=alpine
	VERSION_ID=3.5.2
	PRETTY_NAME="Alpine Linux v3.5"
	HOME_URL="http://alpinelinux.org"
	BUG_REPORT_URL="http://bugs.alpinelinux.org"
