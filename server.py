import http.server
import socketserver
import subprocess

class MyHttpRequestHandler(http.server.SimpleHTTPRequestHandler):
    def do_GET(self):
        self.send_response(200)
        self.send_header("Content-type", "text/html")
        self.end_headers()
        word = ''
        
        if self.path == '/on':
            word = 'on'
            subprocess.run(["sh", "./tv_on.sh"])
        if self.path == '/off':
            word = 'standby'
            subprocess.run(["sh", "./tv_off.sh"])
            
        self.wfile.write(bytes(word, "utf8"))
        return

# Create an object of the above class
handler_object = MyHttpRequestHandler

PORT = 8000
my_server = socketserver.TCPServer(("", PORT), handler_object)

# Star the server
my_server.serve_forever()
