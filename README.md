# DeClone

To start your Phoenix app:

  * Install dependencies with `mix deps.get`
  * Create and migrate your database with `mix ecto.create && mix ecto.migrate`
  * Install Node.js dependencies with `npm install`
  * Start Phoenix endpoint with `mix phoenix.server`

Now you can visit [`localhost:4000`](http://localhost:4000) from your browser.

Ready to run in production? Please [check our deployment guides](http://www.phoenixframework.org/docs/deployment).

## Learn more

  * Official website: http://www.phoenixframework.org/
  * Guides: http://phoenixframework.org/docs/overview
  * Docs: https://hexdocs.pm/phoenix
  * Mailing list: http://groups.google.com/group/phoenix-talk
  * Source: https://github.com/phoenixframework/phoenix

## Benchmark result
$ wrk -t4 -c100 -d60s --timeout 2000 http://52.213.200.150/a/2c   
Running 1m test @ http://52.213.200.150/a/2c
  4 threads and 100 connections
    Thread Stats   Avg      Stdev     Max   +/- Stdev
        Latency   198.80ms  137.28ms   1.18s    87.23%
	    Req/Sec   162.14     76.61   314.00     55.06%
	      38776 requests in 1.00m, 52.96MB read
	      Requests/sec:    646.22
	      Transfer/sec:      0.88MB

