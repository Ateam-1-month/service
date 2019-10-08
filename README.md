## Version
ruby version 2.5.3

rails version 6.0.0

### 起動の仕方

```
docker-compose up 
```

ローカル
```
localhost:3000
```

本番
```
http://a.intern.ate.am:3000/
```


DBいじったら
```
docker-compose run web rails db:migrate
```


# エラーが起きたら
rails6 を使っていいるからwebpackerがどうのこうのらしい

```
web_1  | => Booting Puma
web_1  | => Rails 6.0.0 application starting in development
web_1  | => Run `rails server --help` for more startup options
error Couldn't find an integrity file
error Found 1 errors.
web_1  |
web_1  |
web_1  | ========================================
web_1  |   Your Yarn packages are out of date!
web_1  |   Please run `yarn install --check-files` to update.
web_1  | ========================================
web_1  |
web_1  |
web_1  | To disable this check, please change `check_yarn_integrity`
web_1  | to `false` in your webpacker config file (config/webpacker.yml).
web_1  |
web_1  |
web_1  | yarn check v1.19.0
web_1  | info Visit https://yarnpkg.com/en/docs/cli/check for documentation about this command.
web_1  |
web_1  |
web_1  | Exiting
service_web_1 exited with code 1
```

みたいなエラーが起きたら

src/app/config/webpacer.ymlを修正。
```
development:
  <<: *default
  compile: true

  # Verifies that correct packages and versions are installed by inspecting package.json, yarn.lock, and node_modules
  check_yarn_integrity: true

  # Reference: https://webpack.js.org/configuration/dev-server/
  dev_server:
    https: false
    host: localhost
    port: 3035
    public: localhost:3035
    hmr: false
    # Inline should be set to true if using HMR
    inline: true
    overlay: true
    compress: true
    disable_host_check: true
    use_local_ip: false
    quiet: false
    headers:
      'Access-Control-Allow-Origin': '*'
    watch_options:
      ignored: '**/node_modules/**'
```

そうするととりあえず立ち上がるようになるから
src配下で
```
bin/rails webpacker:install
```

上書きしますか的なことを聞かれるから
y(yes)で

んでもう一度
```
docker-compose up
```
でいけるはず
