# Nockchain 自动编译程序 / Nockchain Auto-Build Script

## 中文版

### 简介

这是一个用于自动编译nockchain项目的脚本。该脚本可在nockchain项目目录下运行，自动执行编译过程并安装相关组件。脚本具有自动重试功能，能够有效应对因网络问题导致的编译失败，避免意外退出。

### 功能特点

- 自动执行编译命令
- 内置重试机制（最多20次），适合网络不稳定环境
- 详细的执行日志输出
- 简单易用，只需一个命令即可启动
- 自动安装nockchain钱包和主程序

### 使用方法

下载并执行脚本：
```bash
wget https://raw.githubusercontent.com/myeyesareopen/nockchain-auto-build/refs/heads/main/auto-build.sh && chmod +x auto-build.sh && ./auto-build.sh
```

### 脚本执行流程

1. 执行 `make build` - 编译项目
2. 执行 `make install-nockchain-wallet` - 安装nockchain钱包
3. 执行 `make install-nockchain` - 安装nockchain主程序

每个步骤遇到错误时，会自动重试最多20次，每次重试间隔10秒。

### 自定义配置

您可以通过修改脚本开头的 `MAX_RETRIES` 变量来调整最大重试次数：
```bash
# Max retries times
MAX_RETRIES=20
```

### 下载链接

GitHub: [https://github.com/myeyesareopen/nockchain-auto-build](https://github.com/myeyesareopen/nockchain-auto-build)

Raw文件: [https://raw.githubusercontent.com/myeyesareopen/nockchain-auto-build/refs/heads/main/auto-build.sh](https://raw.githubusercontent.com/myeyesareopen/nockchain-auto-build/refs/heads/main/auto-build.sh)

---

## English Version

### Introduction

This is a script for automatically building the nockchain project. The script can be run in the nockchain project directory to automatically execute the compilation process and install related components. The script has an automatic retry function that can effectively handle compilation failures caused by network issues and prevent unexpected exits.

### Features

- Automatically executes build commands
- Built-in retry mechanism (up to 20 times), suitable for unstable network environments
- Detailed execution log output
- Simple to use, requires only one command to start
- Automatically installs nockchain wallet and main program

### Usage

Download and execute the script:
```bash
wget https://raw.githubusercontent.com/myeyesareopen/nockchain-auto-build/refs/heads/main/auto-build.sh && chmod +x auto-build.sh && ./auto-build.sh
```

### Execution Process

1. Execute `make build` - Build the project
2. Execute `make install-nockchain-wallet` - Install nockchain wallet
3. Execute `make install-nockchain` - Install nockchain main program

When encountering errors, each step will automatically retry up to 20 times with a 10-second interval between retries.

### Customization

You can adjust the maximum number of retries by modifying the `MAX_RETRIES` variable at the beginning of the script:
```bash
# Max retries times
MAX_RETRIES=20
```

### Download Link

GitHub: [https://github.com/myeyesareopen/nockchain-auto-build](https://github.com/myeyesareopen/nockchain-auto-build)

Raw file: [https://raw.githubusercontent.com/myeyesareopen/nockchain-auto-build/refs/heads/main/auto-build.sh](https://raw.githubusercontent.com/myeyesareopen/nockchain-auto-build/refs/heads/main/auto-build.sh) 
