#!/usr/bin/python3
import requests
import sys
import json


def number_of_subscribers(subreddit):
    """returns the number of subscribers for a given subreddit
    """
    headers = {'user-agent': 'auserrequest'}
    r = requests.get("http://www.reddit.com/r/{}/about.json".format(subreddit),
                     headers=headers)
    if (r.status_code is 302) or (r.status_code is 404):
        return 0
    r = r.json()
    if 'error' in r:
        return 0
    if 'subscribers' in r['data']:
        return r['data']['subscribers']
    return 0
