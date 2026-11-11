# 道法算命 · 独立安装包（iOS IPA）

这个包把道法算命做成了一个真正的 iPhone App：打开就是道法算命，16 个模块都在，离线也能用，不用联网，不用 Muse，不用 Safari。

原理和 AIClip 一样：GitHub 免费的云端 Mac 编译，出未签名 IPA，你用自己的签名软件签上就能装。

## 第 1 步：新建仓库，上传文件

1. GitHub 右上角 + → New repository，名字填 `daofa`，选 Public，点 Create。
2. 点 Add file → Upload files，把这个文件夹里的**所有文件**（包括 `.github` 隐藏文件夹）都拖上去，点 Commit。
   注意：`DaoFa/dao-fa-suan-ming.html` 一定要传上去，App 就是加载这个本地网页。

## 第 2 步：点一下 Run，等它打好 IPA

1. 打开仓库顶部的 Actions 标签页。
2. 左边选 Build unsigned IPA，右边点 Run workflow → Run workflow。
3. 等几分钟，跑完出现绿色对勾，点进去最下面 Artifacts 里下载 `DaoFa-unsigned-ipa`，里面就是 `DaoFa-unsigned.ipa`。
4. 拿这个未签名 IPA 去你的签名软件里签名、安装。

## 重要说明

- 打出来的是**未签名 IPA**，直接装会失败，必须先用你的签名软件签过才能装。
- 这是离线 App，时间取手机本地时间，算法都在本地算，不用联网。
- 卖给买家的话：这个 IPA 是按你的签名装的，买家自己装不了你的签名版；卖给买家要卖文件包 / 源码，让他自己打包签名，或者你帮他打包一个他的版本。
- GitHub 最近 macOS 机器比较挤，像 AIClip 那次一样，排队 15 分钟没机器也可能失败，失败了过段时间再 Run 一次就行，不用重新传文件。
