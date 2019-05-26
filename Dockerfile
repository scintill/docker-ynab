FROM scottyhardy/docker-wine@sha256:ca0481f5c953cbb9c40ce6e91c01f9bf06ea7de73094663f13931778f1060a58

RUN ln -sf /Xauthority/xserver.xauth /root/.Xauthority
