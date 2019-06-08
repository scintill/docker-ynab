FROM theasp/novnc@sha256:7d57a01c49c27e0ac643afdb4cce80eaca7e63282fa7b13568a7388e30635575

RUN mv /usr/share/novnc/vnc_auto.html /usr/share/novnc/index.html
