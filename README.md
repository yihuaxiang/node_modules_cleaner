# aowu-node-modules-cleaner
node_modules cleaner (node_modules 清理器)


## 安装


```
npm install -g aowu-node-modules-cleaner
```


## 使用

在需要清理`node_modules`的目录下执行以下命令

```
nmc
```

## node_modules 黑洞历史

![](https://fudongdong-statics.oss-cn-beijing.aliyuncs.com/images/20220213/b87c495bf2b44b46b690fbc8a1a9a207.png?x-oss-process=image/resize,w_800/quality,q_80)

1. npm安装模块一开始是树状结构，依赖的依赖都放到各自的node_modules目录下面，这样一个复杂一点项目安装完依赖，node_modules目录动不动就上G的大小。
2. 后来npm支持了扁平结构，但一旦遇到版本冲突，也就是依赖相同的模块但版本各不同，这样的依赖依旧会安装到各自的node_modules目录下，还是会有树状结构。
3. 所以node_modules就像黑洞一样，深不见底。有时候因为路径太长，系统都无法删除此类文件。
4. 以上也会导致，项目仅有几个页面，而`node_modules`居然有数个`G`的存储空间


## node_modules 清理器

`cli`全局安装方法

```shell
npm install -g aowu-node-modules-cleaner
```

然后进入项目根目录下进行清理
```shell
nmc
```

该工具会递归所有目录（最大2层深度），将`node_modules`目录进行清理。
脚本使用`find`命令查找目标目录，能够正确处理包含空格的路径。
