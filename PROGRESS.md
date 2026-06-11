# 项目进展记录（PROGRESS）

> 本文件用于跨会话记录 MetaCode 文档/公开页相关进展，便于下次直接读取续接。
> 时间用绝对日期。最新进展放最上面。

## 相关仓库与站点

- **本仓**：`yuduoduo503-coder/metacode-public-page-v64-20260513` —— MetaCode 公开页 + `docs/`（Mintlify 源 mdx）。
- **文档发布仓**：`shuzuan-org/docs`（私有），Mintlify 文档源在其 `mdx/` 目录。
- **线上文档**：https://docs.metask.ai （预览域名 https://origintask.mintlify.app ）。
- Mintlify 站点每个页面可在 URL 后加 `.md` 取原始内容；`/llms.txt`、`/llms-full.txt`、`/sitemap.xml` 可列出全部页面。

## 进展

### 2026-06-11 — 将 Mintlify 站点内容同步推送到 shuzuan-org/docs

- 来源：https://origintask.mintlify.app/ ，经各页 `.md` 端点抓取全部 **14 个页面**：
  `concepts, enterprise, faq, features, first-use, glossary, index, pricing, quickstart, security, team, tutorials, use-cases, why-metacode`。
- 处理：去掉 Mintlify `.md` 导出附带的「Documentation Index」提示块，把首个 `# 标题` / `> 描述` 还原为标准 YAML frontmatter（`title` / `description`），格式与仓库现有 mdx 一致。
- 结果：覆盖推送到 `shuzuan-org/docs` 的 `mdx/` 目录，提交到 `main`。
  - commit `0a946ed`（`ac20f0a..0a946ed`），diff 14 文件 +178 / −92。
  - 未改动 `mdx/api-reference.mdx`、`docs.json`、`images/` 等非站点页面文件。
- 备注：推送账号 `yuduoduo503-coder` 起初对 `shuzuan-org/docs` 只有读权限，后由管理员加为 Write 后推送成功。

## 待办 / 下一步

- 如线上文档再更新，重复同样流程（抓 `.md` → 还原 frontmatter → 覆盖 `mdx/` → push）。
- 注意 token 用后及时撤销。
