# shell-expect

## 运行时指定用户名、密码、主机名

```bash
docker run --rm -it \
  -e SSH_USER=root \
  -e SSH_HOST=47.102.122.82 \
  -e SSH_PASSWORD=913003120m. \
  expect
```


在容器内执行远程命令：
```bash
./run.sh "echo I am in remote."
```

## 在容器内指定用户名、密码、主机名

```bash
export SSH_USER=root SSH_HOST=192.168.0.0.1 SSH_PASSWORD=your_password && ./run.sh "echo I am in remote."
```