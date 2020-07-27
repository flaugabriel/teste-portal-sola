# Portal Solar - Dev Test

## Teste para vaga de Dev pleno

### Requisitos 

`$ bundle exec rails db:create db:migrate db:seed`


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




