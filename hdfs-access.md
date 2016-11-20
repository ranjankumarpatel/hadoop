http://192.168.0.3:50070/webhdfs/v1/?op=LISTSTATUS

hdfs fs -ls /

curl -i "http://<HOST>:<PORT>/webhdfs/v1/<PATH>?op=LISTSTATUS"
