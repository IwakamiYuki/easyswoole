<?php
return [
    'SERVER_NAME'=>"EasySwoole",
    'MAIN_SERVER'=>[
        'HOST'=>'0.0.0.0',
        'PORT'=>9501,
        'SERVER_TYPE'=>\EasySwoole\EasySwoole\ServerManager::TYPE_WEB_SERVER,
        'SOCK_TYPE'=>SWOOLE_TCP,//该配置项当为SERVER_TYPE值为TYPE_SERVER时有效
        'RUN_MODEL'=>SWOOLE_PROCESS,
        'SETTING'=>[
            'task_worker_num' => 8, //异步任务进程
            'task_max_request'=>10,
            'max_request'=>5000,//强烈建议设置此配置项
            'worker_num'=>8
        ],
    ],
    'TEMP_DIR'=>null,//若不配置，则默认框架初始化
    'LOG_DIR'=>null,//若不配置，则默认框架初始化
    'IS_DEV'=>true,//若为生产环境，则解析dev.env文件，否则加载produce.evn
];