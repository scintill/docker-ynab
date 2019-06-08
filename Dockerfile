FROM theasp/novnc@sha256:7d57a01c49c27e0ac643afdb4cce80eaca7e63282fa7b13568a7388e30635575

COPY --from=sha256:a0f448c9b7f62f99e31af7d6b6bd326de029d4e7e0a06dae50708465796b5c64 ["/home/wineuser2/.local/share/icons/hicolor/128x128/apps/66DF_YNAB 4.0.png", "/usr/share/novnc/favicon.png"]
RUN mv /usr/share/novnc/vnc_auto.html /usr/share/novnc/index.html && \
	sed -e 's@<title>noVNC</title>@<title>YNAB</title><link rel="icon" type="image/png" href="/favicon.png">@' \
		-e '/document\.title =/d' \
		-i /usr/share/novnc/index.html && \
	rm /usr/share/novnc/favicon.ico
