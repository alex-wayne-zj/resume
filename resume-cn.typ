#import "template.typ": *

#let private_info = json("resume-private/private_info.json")
#let resume_name = private_info.name_cn
#let resume_phone = private_info.phone
#let resume_email = private_info.email
#let resume_advisor = private_info.advisor
#let resume_awatar = "resume-private/profile.jpeg"

// 主题颜色
#let theme-color = rgb("#26267d")
#let icon = icon.with(fill: theme-color)

// 设置图标
#let fa-award = icon("icons/fa-award.svg")
#let fa-building-columns = icon("icons/fa-building-columns.svg")
#let fa-code = icon("icons/fa-code.svg")
#let fa-envelope = icon("icons/fa-envelope.svg")
#let fa-github = icon("icons/fa-github.svg")
#let fa-graduation-cap = icon("icons/fa-graduation-cap.svg")
#let fa-linux = icon("icons/fa-linux.svg")
#let fa-phone = icon("icons/fa-phone.svg")
#let fa-windows = icon("icons/fa-windows.svg")
#let fa-wrench = icon("icons/fa-wrench.svg")
#let fa-work = icon("icons/fa-work.svg")
#let fa-globe = icon("icons/fa-globe.svg")


// 设置简历选项与头部
#show: resume.with(
  // 字体和基准大小
  size: 10pt,
  // 标题颜色
  theme-color: theme-color,
  // 控制纸张的边距
  margin: (
    top: 1.2cm,
    bottom: 1.2cm,
    left: 1.5cm,
    right: 1.5cm,
  ),

  // 如果需要姓名及联系信息居中，请删除下面关于头像的三行参数，并取消header-center的注释
  header-center: true,

  // 如果不需要头像，则将下面三行的参数注释或删除
  // photograph: resume_awatar,
  // photograph-width: 10em,
  // gutter-width: 2em,
)[
  = #mask(alter: "Alex")[#resume_name]

  #info(
    color: theme-color,
    (
      icon: fa-phone,
      content: [#mask(mark: true)[#resume_phone]],
    ),
    (
      icon: fa-envelope,
      content: [#mask(mark: true)[#resume_email]],
    ),
    // Github 和 博客站 内容建设中
    // (
    //   icon: fa-github,
    //   content: "Alex",
    //   link: "https://github.com/alex-wayne-zj",
    // ),
    // (
    //   icon: fa-globe,
    //   content: "alex-wayne-zj.github.io",
    //   link: "https://alex-wayne-zj.github.io",
    // ),
  )
][]
// [
//   #h(2em)
//   此处为 Introduction 内容
// ]


== #fa-graduation-cap 教育背景

#item(
  tl: [北京航空航天大学],
  tr: [2023.09-2026.01],
)[
  硕士，计算机技术｜#link("https://vrlab.buaa.edu.cn/")[VR Lab]，导师：#mask(mark: true)[#resume_advisor]｜研究方向为*计算机视觉*。 #linebreak()
]
#item(
  tl: [北京航空航天大学],
  tr: [2019.09-2023.06],
)[
  本科，软件工程｜GPA排名*前20%*｜获得推荐免试研究生资格。 #linebreak()
]


== #fa-work 实习经历

#item(
  tl: [腾讯],
  bl: [Golang后端实习生],
  br: [2025.05至今],
)[
  - 负责AI工作流Windows端应用的后台服务开发：主对话框上传文件返回对应推荐提示词，迁移Deepseek云服务提供方，生成与验证KOL邀请码，对接算法解析图文URL和视频URL的文本和图像内容，支持无历史地调用hunyuan-turbo与hunyuan-vision模型，基于MCP协议让LLM调用工具推荐论文；
  - 梳理应用后台的SRE可观测性监控：主调监控、被调监控、事件监控等。
]

#item(
  tl: [Momenta],
  bl: [全栈开发实习],
  br: [2024.08-2025.01],
)[
  - 负责协助公司服务管理平台Vue前端和Gin后端的开发与维护：根据一线用户需求开发功能（如搭建镜像管理与镜像详情页面），修复性能bug（如改进可过滤表格页面query与filter变量ref同步逻辑），优化改善用户体验（如应用登记后实时返回CI/CD流水线状态）等；
  - 基于DataEase BI和Doris数据库搭建业务数据仪表盘，助力运营决策。
]

#item(
  tl: [迅雷],
  bl: [AI后端实习],
  br: [2024.03-2024.07],
)[
  - 基于Django框架构建3D高斯泼溅网页应用，用户可将视频转化为3D场景；
  // - 通过Gradio和云端GPU部署Llama3-8B-Instruct Chatbot；
  - 使用FastAPI框架搭建Stable Diffusion LoRA文生图模型风格微调平台后端。
]

// #item(
//     tl: [华顺信安],
//     bl: [Golang后端实习],
//     br: [2022.11-2023.01]
// )[
//     - 编程模拟和解析楼宇自控设备通信BACnet协议，使用cobra将其包装成命令行工具；
//     - 用Python编程包装了一个类似nmap的命令行工具并发布在pypi.org；
//     - 添加4000+行的Go单元测试，使对应代码仓库测试覆盖率超过60%。
// ]


== #fa-code 项目经历

#item(
  tl: [多场景的学习过程记录与分析],
  tr: [硕士毕设项目],
  bl: [研究者与开发者],
  br: [2023.09至今],
)[
  - 基于多人体追踪ByteTrack模型和改进Token Merging模块的视频动作识别VideoMAE模型，开发搭建教室场景下的视频学生动作识别系统，并与北师大研究者合作基于学生动作构建教学指标辅助智慧教育。
]

// #item(
//     tl: [基于Transformer的视频动作识别研究],
//     tr: [本科毕设项目],
//     bl: [研究者与开发者],
//     br: [2023.03-2023.06],
// )[
//     - 基于无监督训练的VideoMAE模型和Token Merging方法，探索实现一种可插拔轻量级的视频动作识别方法。在1%的精度损失前提下，提升了15%的运行效率。
// ]

#item(
  tl: [科研学者社交平台],
  tr: [软件工程课程项目],
  bl: [前端开发者],
  br: [2022.09],
)[
  - 十一天的敏捷开发，项目基于Vue.js+SpringBoot框架，平台功能类似ResearchGate，我负责前端开发和业务拆解。
]


== #fa-wrench 专业技能

#grid(
  columns: (auto, auto),
  align: (right, left),
  row-gutter: 11pt,
  gutter: 8pt,
  [*编程语言*], [熟悉Golang, Python, JavaScript等；学习并使用过C, C++, Java等；],
  [*应用开发*],
  [Gin, Django等后端框架和Vue.js前端框架，MySQL数据库开发与设计，了解RPC微服务架构开发流程，Docker, K8s等DevOps工具，能熟练使用生成式AI工具提高工作效率；],
  [*主修课程*],
  [软件工程、计算机网络、操作系统、数据库原理、算法与数据结构、Linux系统编程、编译原理等；],
  [*外语*], [英语六级647。],
)