
# RabbitMq
RabbitMQ运行环境及服务端搭建说明文档 Windows版
  #关于 本文档 
  
  
            本文档用于初次ERLANG环境安装及RABBITMQ服务器端的安装。


1.软件准备：


    1.1.	ERLang安装包：ErLang-windows-x64_x86.zip  类似java环境中的虚拟机
    1.2.	RabbitMQ-Server：rabbitmq-server-windows-3.6.2.zip 
    
  
  
  
2.软件安装


     2.1.	ERLang运行时安装
      安装注意事项：
      除了目录选择尽可能选择一个纯英文路径外，其他部分默认即可
      路径，如：D:\Green\erl7.3
      安装完后配置系统变量：
   系统变量： ERLANG_HOME=D:\Green\erl7.3                                  
                  ERLANG_SERVICE_MANAGER_PATH=D:\Green\erl7.3\erts-7.3\bin
 
    完成安装

    2.2	RabbitMQ Server安装：
        官方安装文档：http://www.rabbitmq.com/install-windows-manual.html
        官方提供：1.可执行安装包；2.zip解压包安装 两种方式
                可执行安装方式较为快捷，默认安装即可；压缩包方式初步安装需要做一些配置工作，本例采用压缩包方式。
                
                
        解压安装
              将安装文件解压到适合位置，推荐全英文路径下，不要有空格
              如下路径：D:\Green\rabbitmq_server-3.6.2
              完成后可进行下一步配置操作
              
        配置
            配置文档：http://www.rabbitmq.com/configure.html
            也可参考安装目录下的说明文件（较简单）：readme-service.txt
            配置方式分为环境变量配置 或 配置文件配置
            环境变量参考文档：
                http://www.rabbitmq.com/configure.html#customise-windows-environment
            配置文件参考文档：
                http://www.rabbitmq.com/configure.html#configuration-file
             为方便复用配置信息，采用配置文件的方式，其他方式大体相同
            首先指定环境变量位置：
            新增环境变量(重命名rabbitmq.config.example 为rabbitmq.config)：
            
            不存在的目录需新建
            新增环境变量(重命名rabbitmq.config.example 为rabbitmq.config)：
            
            
            不存在的目录需新建
            自动配置导入脚本（执行前修改文件中路径对应本地环境）：  setpath.mq.bat( 见上传文件  )

 
             RABBITMQ_CONFIG_FILE	D:\Green\rabbitmq_server-3.6.2\etc\rabbitmq.config
	          RABBITMQ_SERVICENAME	MQService
	          RABBITMQ_NODENAME	MQ01
            RABBITMQ_BASE	D:\Green\Rabbitmq_server-3.6.2\working
	          RABBITMQ_PID_FILE	    D:\Green\Rabbitmq_server-3.6.2\working\pid\di.pid
	          RABBITMQ_NODE_IP_ADDRESS	127.0.0.1
	          RABBITMQ_NODE_PORT	5672
	          RABBITMQ_LOG_BASE	D:\Green\Rabbitmq_server-3.6.2\working\log
		
        安装服务
          以管理员身份运行cmd
              # cd /d D:\Green\Rabbitmq_server-3.6.2\sbin
               # rabbitmq-service.bat install
              如图：

