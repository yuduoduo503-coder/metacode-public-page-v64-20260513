# MetaCode 文档站（Mintlify）

本文件夹是用 [Mintlify](https://mintlify.com) 搭建的 MetaCode 产品文档站，内容整理自官方产品介绍页。

## 文件说明

- `docs.json` —— 整个网站的配置：站点名、颜色、导航菜单、页脚等。
- 每个 `.mdx` 文件 —— 一个页面（比如 `quickstart.mdx` 就是「快速上手」那一页）。
- `logo/`、`favicon.svg` —— 站点图标（目前是临时占位图，可随时替换）。

## 页面清单

| 文件 | 页面 |
| --- | --- |
| `index.mdx` | 认识 MetaCode |
| `quickstart.mdx` | 快速上手（注册 / 安装 / 升级） |
| `first-use.mdx` | 第一次使用 |
| `why-metacode.mdx` | 为什么选 MetaCode |
| `concepts.mdx` | 核心概念 |
| `features.mdx` | 功能详解 |
| `use-cases.mdx` | 六大真实案例 |
| `enterprise.mdx` | 企业版 |
| `team.mdx` | 团队协作 |
| `security.mdx` | 安全与隐私 |
| `pricing.mdx` | 价格 |
| `faq.mdx` | 常见问题 |
| `tutorials.mdx` | 视频教程 |
| `glossary.mdx` | 术语表 |

## 本地预览（在自己电脑上看效果）

1. 先装一次工具（只需一次）：
   ```bash
   npm i -g mint
   ```
2. 进入本文件夹，启动预览：
   ```bash
   mint dev
   ```
3. 浏览器打开提示的地址（通常是 http://localhost:3000）即可看到网站。

## 正式上线

把本文件夹推送到 GitHub，然后在 [Mintlify 后台](https://dashboard.mintlify.com) 关联这个仓库，即可自动部署成正式网站。
