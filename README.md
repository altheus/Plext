# TextPlex

A text-only Plex browser for your phone. Filter as you type, group by actor, director, writer, studio, genre, decade or collection, and hand playback straight to mpv or VLC on Android as direct play (no transcoding).

One static page, no backend. Your Plex token stays in your browser.

## Use

1. Open the GitHub Pages URL in Chrome on Android.
2. ⚙ → Sign in with Plex. Allow local network access if Chrome asks.
3. Pick a player (mpv, VLC or ask every time). Tap a title, then Play.

"Use demo data" loads 400 made-up films to try the browsing without a server.

## Requirements

- Plex server with Secure connections set to Preferred (the default), so the page can use its HTTPS `plex.direct` address.
- If your router blocks `plex.direct` (DNS rebind protection), whitelist that domain.
- mpv (`is.xyz.mpv`) or VLC (`org.videolan.vlc`) installed.

## Known limits

- Watched status and resume points are not sent back to Plex.
- The stream URL includes the server's access token, so it may show in the player's history.

## Versioning

Starts at v0.00001 and goes up by 0.00001 with every release. The version is the `VERSION` constant in `index.html`, shown in ⚙, and each release commit is tagged `vX.XXXXX`.
