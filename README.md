# docker-asuka

[Asuka](https://github.com/treelite/asuka) Docker Image

## Usage

```sh
docker pull treelite/asuka
docker run -d -P --name asuka treelite/asuka
```

默认配置信息如下：

* 暴露宿主机的 `8777` 端口用于提供服务
* 日志文件保存在 `/var/log/asuka` 目录下，可以通过创建日志读取 Container 并挂载这个卷来获取详细的日志信息 
* 只可访问 `registry.npmjs.org`

如需修改默认配置，请在修改 [etc/asuka.json](etc/asuka.json) 或者 [Dockerfile](Dockerfile) 后手动构建

## License

MIT
