{ type = ([] : Optional Text)
, healthy = Some { http_statuses = ([] : Optional (List Natural))
                 , successes = ([] : Optional Natural)
                 }
, unhealthy = Some { http_statuses = ([] : Optional (List Natural))
                   , timeouts = ([] : Optional Natural)
                   , http_failures = ([] : Optional Natural)
                   , tcp_failures = ([] : Optional Natural)
                   }
}
