## Remote MCP

这是一个可被远程调用的MCP服务，基于FastMCP构建。

### RUN
```bash
uvicorn app.main:app
```

### 远程调用方式
[mcp-remote](https://github.com/geelen/mcp-remote)