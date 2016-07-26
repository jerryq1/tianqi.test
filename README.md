# tianqi.test
这个主要是一个测试api的app就不上效果图了，就酱

这里有个问题要主意一下因为，Xcode7禁用了明码的HTTP请求，应该在info.plist里添加字段如下：
打开 工程主目录下info.plist
增加属性字典 App Transport Security Settings
在这个属性下增加节点 Allow Arbitrary Loads, value 为 YES
