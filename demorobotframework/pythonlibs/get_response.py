import requests


def response_size(resp_size):
    resp_size = len(resp_size)
    return resp_size


def response_type(resp):
    resp_type = type(resp)
    return resp_type



# def respope():
#     response = requests.get("https://jsonplaceholder.typicode.com/e")
#     resp_type = type(response.content)
#     print(resp_type)
#     return resp_type


