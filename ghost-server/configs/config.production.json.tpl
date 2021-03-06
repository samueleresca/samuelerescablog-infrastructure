{
    "url": "https://${domain-name}",
    "server": {
      "host": "127.0.0.1",
      "port": "2368"
    },
    "database": {
        "client": "mysql",
        "connection": {
            "host"     : "${mysql-host}",
            "user"     : "${mysql-user}",
            "password" : "${mysql-pass}",
            "database" : "${mysql-db-name}"
        }
    },
    "mail": {
    "from": "'Samuele Resca' <info@samuele.dev>",
    "transport": "SMTP",
    "options": {
        "host": "${ses-server-name}",
        "port": 465,
        "service": "SES",
        "auth": {
            "user": "${ses-user}",
            "pass": "${ses-pass}"
        }
    }
    },
    "paths": {
        "contentPath": "content/"
    },
    "logging": {
        "level": "info",
        "rotation": {
            "enabled": true
        },
        "transports": ["stdout"]
    }
}