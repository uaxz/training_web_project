def application(environ, start_response):
    data = []
    print(environ["QUERY_STRING"])
    for line in environ["QUERY_STRING"].split("&"):
        data.append('{}\n'.format(line).encode())
    start_response('200 OK', [
        ('Content-Type', 'text/plain')
    ])
    return data