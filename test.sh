echo "Spawning 10 processes"

for i in {1..20} ;
do
  ( curl http://localhost:8050/render.png\?url\=https://getemoji.com\&render_all\=1\&wait\=1 > emoji_$i.png & )
done
