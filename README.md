# Portal Solar - Dev Test

## Teste para vaga de Dev pleno

### Requisitos 

`$ bundle exec rails db:create db:migrate db:seed`


#### Infra estrutura 

* docker postgres 
* deploy na vultr.com
* dcoker postgres config 
sudo docker run -d \
--name=redis \
--restart=always \
-v redis:/var/lib/redis/data \
-p 6379:6379 \
redis:latest




