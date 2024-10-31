from http.server import BaseHTTPRequestHandler, HTTPServer
import logging

class RequestHandler(BaseHTTPRequestHandler):
    def _set_response(self, status_code=200):
        self.send_response(status_code)
        self.send_header("Content-type", "text/html")
        # CORS headers to allow cross-origin requests
        self.send_header("Access-Control-Allow-Origin", "*")
        self.send_header("Access-Control-Allow-Methods", "POST, OPTIONS")
        self.send_header("Access-Control-Allow-Headers", "Content-Type")
        self.end_headers()

    def do_OPTIONS(self):
        # Handle the OPTIONS request
        self._set_response()
        self.wfile.write(b"OPTIONS request handled\n")

    def do_POST(self):
        # Get the content length to read POST data
        content_length = int(self.headers["Content-Length"])
        post_data = self.rfile.read(content_length)

        # Log the received POST data
        logging.info("POST request,\nPath: %s\nHeaders:\n%s\n\nBody:\n%s\n",
                     str(self.path), str(self.headers), post_data.decode("utf-8"))

        # Respond with a simple message
        self._set_response()
        self.wfile.write(b"POST request received!\n")

def run(server_class=HTTPServer, handler_class=RequestHandler, port=8080):
    logging.basicConfig(level=logging.INFO)
    server_address = ("", port)
    httpd = server_class(server_address, handler_class)
    logging.info("Starting server on port %d...\n" % port)

    try:
        httpd.serve_forever()
    except KeyboardInterrupt:
        pass
    httpd.server_close()
    logging.info("Server stopped.")

if __name__ == "__main__":
    run(port=8080)
