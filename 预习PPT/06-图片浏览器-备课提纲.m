1.引出需要一个index
* 记录图片的位置
* index++ 和 index--

2.根据index直接更换内容
* 完整地实现previous和next方法：索引更改、切换内容、控制按钮状态
* 抽取公共代码
* 默认选中第0张

3.根据扩展性不好引出plist文件的使用
* 创建plist
* 在previous和next方法中加载plist
* 让plist只加载一次（先在viewDidLoad）

4.实现懒加载