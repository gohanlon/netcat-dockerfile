# netcat-dockerfile

Deploy this `Dockerfile` to a server to inspect incoming connections.

For example, I was troubleshooting a web app deployed to [Fly.io][1] that was
crashing when receiving basic health checks. I used this to confirm that the
incoming basic health checks do nothing more than open a TCP connection and
immediately close it without sending any data.

[1]: http://fly.io
