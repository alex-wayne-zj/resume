# resume

# 简历项目

> Based on https://typst.app/project/rw1SLr0IIZZnCrkrsypRQF.

PDF 版简历，见 [resume-cn](./resume-cn-public.pdf)

个人关键信息保存在 `resume-private/private_info.json` 下，结构为：

```json
{
    "name_cn": "",
    "name_en": "",
    "phone": "",
    "email": "",
    "advisor": ""
}
```

在当前目录下运行 `make` 就会构造出 4 个版本的简历。