import tornado.ioloop
import tornado.web
import argparse
import logging
import coloredlogs
coloredlogs.install(level=logging.INFO)


def run_parser():
    parser = argparse.ArgumentParser(description='Run LSP Homepage')
    parser.add_argument('-p', '--port', type=int, default=8080, required=True,
                        help='Server port (default: 8080)')
    group = parser.add_mutually_exclusive_group(required=True)
    group.add_argument('--int', default=False, action='store_true',
                       help='Run the Integration version of the LSP Homepage')
    group.add_argument('--stable', default=False, action='store_true',
                       help='Run the Stable version of the LSP Homepage')
    args = parser.parse_args()
    return args


class LSPintHandler(tornado.web.RequestHandler):
    def get(self):
        st = "This is the Integration (-int) instance of the LSST Science " \
             "Platform.\n Its functionality and behavior may be changed " \
             "on short notice and its availability may be limited by testing" \
             " and other activities."
        self.render('index.html',
                    title=': Integration',
                    statement=st,
                    motd='integration.md')


class LSPstableHandler(tornado.web.RequestHandler):
    def get(self):
        self.render('index.html', title='', motd='stable.md')


def run_app(args):
    if args.int:
        Handler = LSPintHandler
    if args.stable:
        Handler = LSPstableHandler
    settings = {
        "template_path": "public_html/",
        "static_path": "public_html/static/",
        "debug": True,
        }
    return tornado.web.Application([(r"/", Handler), ], **settings)


if __name__ == "__main__":
    args = run_parser()
    port = args.port
    app = run_app(args)
    app.listen(port)
    logging.info("======== Running on http://0.0.0.0:{} ========".format(port))
    logging.info("(Press CTRL+C to quit)")
    tornado.ioloop.IOLoop.current().start()
