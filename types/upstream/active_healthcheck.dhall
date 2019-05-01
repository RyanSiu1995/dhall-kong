{ https_verify_certificate : Optional Bool
, https_sni : Optional Text
, http_path : Optional Text
, timeout : Optional Natural
, concurrency : Optional Natural
, type : Optional Text
, healthy : Optional { http_statuses : Optional (List Natural)
                     , interval : Optional Natural
                     , successes : Optional Natural
                     }
, unhealthy : Optional { http_statuses : Optional (List Natural)
                       , interval : Optional Natural
                       , timeouts : Optional Natural
                       , http_failures : Optional Natural
                       , tcp_failures : Optional Natural
                       }
}
