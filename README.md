![最终效果](http://upload-images.jianshu.io/upload_images/1334681-c7b1be638e1769fb.gif?imageMogr2/auto-orient/strip)

##### 要求：
- Platform: iOS8.0+ 
- Language: Swift3.1
- Editor: Xcode8.3+

##### 实现：
- **UITableView的横向滚动**

> 看到网上公认的一种比较简单的方法是旋转tableView和cell.contentView

```
// tableView旋转-90°
tableView.transform = CGAffineTransform(rotationAngle: -.pi/2)

// cell.contentView反向旋转90°
cell.contentView.transform = CGAffineTransform(rotationAngle: .pi/2)
```
- **卡片式布局**

![**1. 设置cell.contentView的`Layout Margins`均为40**](http://upload-images.jianshu.io/upload_images/1334681-89b532dd0fa7e3eb.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)

![**2. 设置两边的margin视图**](http://upload-images.jianshu.io/upload_images/1334681-197929f1bc96c3d1.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)

![**3. 注意取消勾选cell和contentView的`Clip To Bounds`选项，防止margin视图被`裁剪`**](http://upload-images.jianshu.io/upload_images/1334681-081545574fb9909f.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)

- **table view设置**

```
tableView.isPagingEnabled = true // 分页
tableView.rowHeight = view.bounds.width // cell高度
tableView.separatorStyle = .none // 分割线样式
```

### 简书
http://www.jianshu.com/p/146c5fef4aab
> 如果对你有帮助，别忘了点个❤️哦。
