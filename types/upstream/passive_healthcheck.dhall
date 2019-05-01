{ type : Optional Text
, healthy : Optional { http_statuses : Optional (List Natural)
                     , successes : Optional Natural
                     }
, unhealthy : Optional { http_statuses : Optional (List Natural)
                       , timeouts : Optional Natural
                       , http_failures : Optional Natural
                       , tcp_failures : Optional Natural
                       }
}
