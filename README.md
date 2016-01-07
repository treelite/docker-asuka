# docker-asuka

[Asuka](https://github.com/treelite/asuka) Docker Image

## Usage

```sh
docker pull treelite/asuka
docker run -d -P --name asuka treelite/asuka
```

默认配置信息如下：

* 暴露宿主机的 `8777` 端口用于提供服务
* 日志文件保存在 `/root/log/asuka` 目录下，可以通过创建日志读取 Container 并挂载这个卷来获取详细的日志信息 

如需自定义配置，可以将配置文件挂载进 Container，并在启动时添加参数指定自定义配置文件

```sh
# 自定义配置文件保存在 ./etc/asuka.json
# 挂载配置文件到 Container 的 /etc/asuka 目录下
# 添加启动参数 -c /etc/asuka/asuka.json 指定自定义配置文件
docker run -d -P -v ./etc:/etc/asuka --name asuka treelite/asuka -c /etc/asuka/asuka.json
```

## License

MIT
