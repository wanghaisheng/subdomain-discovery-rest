from fastapi import FastAPI
import requests
from fastapi.responses import ORJSONResponse
from urllib.parse import urlparse

import subprocess

app = FastAPI()

@app.get("/subdomain/", response_class=ORJSONResponse)
async def sitemap(url:str):
    print('check url',url)
    domain =urlparse(url).netloc
    print('get domain from url',domain)

    list_domains = subprocess.run(["bash", "run.sh",domain])
    try:
        with open(domain+'/'+domain+'_sub_ok.txt',encoding="utf8") as f:
            urls =f.readlines()
    except:
        urls=[]
    return {"urls": urls}