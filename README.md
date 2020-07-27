# Portal Solar - Dev Test

## Teste para vaga de Dev pleno

### Requisitos 

`$ bundle exec rails db:create db:migrate db:seed`

#### Config database.yml 
default: &default
  adapter: postgresql
  encoding: unicode
  pool: <%= ENV.fetch("RAILS_MAX_THREADS") { 5 } %>
  host: 172.17.0.1 #put a ip of you host machine
  port: 5432
  username: root
  password: root


#### Infra estrutura 

* docker postgres 
* deploy na vultr.com
* dcoker postgres config 
sudo docker run -d \
--name=postgres \
-v /etc/localtime:/etc/localtime:ro \
-e POSTGRES_USER=root \
-e POSTGRES_PASSWORD=root \
-v /storage/pgdata:/var/lib/postgresql/data \
-p 5432:5432 \
--restart=always \
postgres




