# Nockchain 自动编译程序 / Nockchain Auto-Build Script

### 简介

这是一个用于自动编译nockchain项目的脚本。该脚本可在nockchain项目目录下运行，自动执行编译过程并安装相关组件。脚本具有自动重试功能，能够有效应对因网络问题导致的编译失败，避免意外退出。

### 功能特点

- 自动执行编译命令
- 内置重试机制（最多20次），适合网络不稳定环境
- 详细的执行日志输出
- 简单易用，只需一个命令即可启动
- 自动安装nockchain钱包和主程序

### 使用方法

#### Ubuntu系统

下载并执行脚本：
```bash
wget https://raw.githubusercontent.com/myeyesareopen/nockchain-auto-build/refs/heads/main/auto-build-ubuntu.sh && chmod +x auto-build-ubuntu.sh && ./auto-build-ubuntu.sh
```

#### Mac系统

下载并执行脚本：
```bash
curl -o auto-build-mac.sh https://raw.githubusercontent.com/myeyesareopen/nockchain-auto-build/refs/heads/main/auto-build-mac.sh && chmod +x auto-build-mac.sh && ./auto-build-mac.sh
```

Mac版本会自动检查并安装必要的开发工具（Xcode Command Line Tools和Homebrew）。

### 脚本执行流程

执行 make install-hoonc - 安装hoonc
执行 make build - 编译项目
执行 make install-nockchain-wallet - 安装nockchain钱包
执行 make install-nockchain - 安装nockchain主程序

每个步骤遇到错误时，会自动重试最多20次，每次重试间隔10秒。

### 自定义配置

您可以通过修改脚本开头的 `MAX_RETRIES` 变量来调整最大重试次数：
```bash
# Max retries times
MAX_RETRIES=20
```

### 下载链接

GitHub: [https://github.com/myeyesareopen/nockchain-auto-build](https://github.com/myeyesareopen/nockchain-auto-build)

Ubuntu版本: [https://raw.githubusercontent.com/myeyesareopen/nockchain-auto-build/refs/heads/main/auto-build-ubuntu.sh](https://raw.githubusercontent.com/myeyesareopen/nockchain-auto-build/refs/heads/main/auto-build-ubuntu.sh)

Mac版本: [https://raw.githubusercontent.com/myeyesareopen/nockchain-auto-build/refs/heads/main/auto-build-mac.sh](https://raw.githubusercontent.com/myeyesareopen/nockchain-auto-build/refs/heads/main/auto-build-mac.sh)

---

### Introduction

This is a script for automatically building the nockchain project. The script can be run in the nockchain project directory to automatically execute the compilation process and install related components. The script has an automatic retry function that can effectively handle compilation failures caused by network issues and prevent unexpected exits.

### Features

- Automatically executes build commands
- Built-in retry mechanism (up to 20 times), suitable for unstable network environments
- Detailed execution log output
- Simple to use, requires only one command to start
- Automatically installs nockchain wallet and main program

### Usage

#### Ubuntu System

Download and execute the script:
```bash
wget https://raw.githubusercontent.com/myeyesareopen/nockchain-auto-build/refs/heads/main/auto-build-ubuntu.sh && chmod +x auto-build-ubuntu.sh && ./auto-build-ubuntu.sh
```

#### Mac System

Download and execute the script:
```bash
curl -o auto-build-mac.sh https://raw.githubusercontent.com/myeyesareopen/nockchain-auto-build/refs/heads/main/auto-build-mac.sh && chmod +x auto-build-mac.sh && ./auto-build-mac.sh
```

The Mac version will automatically check for and install necessary development tools (Xcode Command Line Tools and Homebrew).

### Execution Process

1. Execute make install-hoonc - install hoonc
2. Execute make build - Build the project
3. Execute make install-nockchain-wallet - Install nockchain wallet
4. Execute make install-nockchain - Install nockchain main program

When encountering errors, each step will automatically retry up to 20 times with a 10-second interval between retries.

### Customization

You can adjust the maximum number of retries by modifying the `MAX_RETRIES` variable at the beginning of the script:
```bash
# Max retries times
MAX_RETRIES=20
```

### Download Link

GitHub: [https://github.com/myeyesareopen/nockchain-auto-build](https://github.com/myeyesareopen/nockchain-auto-build)

Ubuntu version: [https://raw.githubusercontent.com/myeyesareopen/nockchain-auto-build/refs/heads/main/auto-build-ubuntu.sh](https://raw.githubusercontent.com/myeyesareopen/nockchain-auto-build/refs/heads/main/auto-build-ubuntu.sh)

Mac version: [https://raw.githubusercontent.com/myeyesareopen/nockchain-auto-build/refs/heads/main/auto-build-mac.sh](https://raw.githubusercontent.com/myeyesareopen/nockchain-auto-build/refs/heads/main/auto-build-mac.sh) 
