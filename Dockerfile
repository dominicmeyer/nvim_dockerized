FROM alpine:3.19.0

RUN apk update && \
	apk add --no-cache curl=8.4.0-r0 git=2.40.1-r0 neovim=0.9.2-r0 g++=12.2.1_git20220924-r10 nodejs-current=20.8.1-r0 npm=9.6.6-r0 python3=3.11.6-r0 tar=1.34-r3 gzip=1.12-r1 && \
	mkdir -p /root/.config && \
	git clone https://github.com/dominicmeyer/nvim_config.git && \
	mv nvim_config /root/.config/nvim && \
	nvim --headless "+Lazy! sync" +qa

COPY startup.sh /tmp/startup.sh

CMD [ "sh", "/tmp/startup.sh" ]
