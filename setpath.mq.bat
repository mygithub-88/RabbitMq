@echo off
@echo 正在导入环境变量 
setx /M RABBITMQ_CONFIG_FILE	E:\Green\rabbitmq_server-3.6.2\etc\rabbitmq.config
setx /M RABBITMQ_SERVICENAME	MQService
setx /M RABBITMQ_NODENAME	MQ01
setx /M RABBITMQ_BASE	E:\Green\rabbitmq_server-3.6.2\working
setx /M RABBITMQ_PID_FILE	E:\Green\rabbitmq_server-3.6.2\working\pid\di.pid
setx /M RABBITMQ_NODE_IP_ADDRESS	127.0.0.1
setx /M RABBITMQ_NODE_PORT	5672
setx /M RABBITMQ_LOG_BASE	E:\Green\rabbitmq_server-3.6.2\working\log
@echo 导入完成
pause