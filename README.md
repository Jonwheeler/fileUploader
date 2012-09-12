This is a very simple application for uploading files from your local machine to
an Amazon s3 bucket for storage on the cloud.

- carrierwave
- fog
- rspec

== Installation

```
  git clone https://github.com/Jonwheeler/fileUploader.git
  bundle install
  rake db:migrate; rake db:test:prepare
  bundle exec rspec spec/
```

You'll need to set up an Amazon s3 bucket http://aws.amazon.com/s3/ and grab your
Access_key_id and secret access key.

![aws Secrets](https://s3.amazonaws.com/jgw_uploader_app/uploads/upload/file/16/Selection_001.png)

Create a new file in ```config/initializers``` called ```_ENV.rb```

```
  ENV['AWS_ACCESS_KEY_ID']='your_access_key'
  ENV['AWS_SECRET_ACCESS_KEY']='your_secret_access_key'
```
You'll want to add this file to ```.gitignore```

```/config/initializers/_ENV.rb ```

== Usage

```
  rails server
  localhost:3000
```
== Screenshot

![amazon s3 fileUploader](https://s3.amazonaws.com/jgw_uploader_app/uploads/upload/file/17/Selection_003.png)
== MIT License

Copyright (c) 2012-*

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.