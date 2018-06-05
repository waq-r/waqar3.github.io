       CURL *curl = curl_easy_init();
       if(curl) {
         curl_easy_setopt(curl, CURLOPT_URL, "http://");
         curl_easy_setopt(curl, CURLOPT_PREPROXY, "socks4://socks-proxy:1080");
         curl_easy_setopt(curl, CURLOPT_PROXY, "http://proxy:80");
         curl_easy_perform(curl);
       }
