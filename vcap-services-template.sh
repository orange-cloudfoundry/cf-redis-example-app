VCAP_SERVICES='
{
  "redis-dedicated":[
    {
      "binding_guid":"532023be-5847-4dc7-90f4-2f207f2bb440",
      "binding_name":null,
      "credentials":{
        "host":"${SERVICE_HOST}",
        "password":"${SERVICE_PASSWORD}",
        "port":"${SERVICE_PORT}"
      },
      "instance_guid":"98645cee-2810-408c-abcd-2c2b41fed9aa",
      "instance_name":"redis-smoketest-1727200788",
      "label":"redis-dedicated",
      "name":"redis-smoketest-1727200788",
      "plan":"small",
      "provider":null,
      "syslog_drain_url":null,
      "tags":[
        "Redis",
        "Document"
      ],
      "volume_mounts":[]
    }
  ]

}


'