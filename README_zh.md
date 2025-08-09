# go-performance-alchemy

## 项目简介

性能优化与工具链实验项目，基于 Go 语言与现代云原生生态，聚焦高性能 RPC、可观测性与自动化调优。

## 目标

* 搭建可扩展的性能测试与优化框架
* 集成多种工具链进行性能观测、调优与回归验证
* 支持多模块、多服务协同实验

## 任务计划

* **Day 1-3**: 初始化仓库与目录结构（基于 golang-standards/project-layout 模板）
* **Day 4-10**: 核心功能开发（Kitex 服务、p99 调优器、eBPF trace 工具）
* **Day 11-12**: 集成测试与部署

## 工具清单

* Go 1.24+
* Kitex
* Docker
* Kubernetes (Kind / k3s)
* Operator SDK
* Prometheus / Grafana

## 目录结构

```
/cmd              # 各服务入口
/internal         # 私有逻辑
/pkg              # 公共库
/deployments      # 部署模板（K8s、Docker Compose等）
/docs             # 文档
/scripts          # 构建/启动脚本
```

## 快速启动

```bash
go run ./cmd/yourservice
```

## 开发建议

1. 在 `/cmd` 下为每个服务建立独立子目录
2. 公共逻辑优先放 `/pkg`，非公共逻辑放 `/internal`
3. 部署配置集中在 `/deployments`
4. 用 `/scripts` 存放一键启动、构建、性能测试等脚本
