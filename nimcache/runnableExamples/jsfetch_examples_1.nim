#[
autogenerated by docgen
loc: /home/runner/work/Nim/Nim/lib/std/jsfetch.nim(119, 17)
rdoccmd: -r:off
]#
import std/assertions
import "/home/runner/work/Nim/Nim/lib/std/jsfetch.nim"
{.line: ("/home/runner/work/Nim/Nim/lib/std/jsfetch.nim", 119, 17).}:
  import std/[asyncjs, jsconsole, jsformdata, jsheaders]
  from std/httpcore import HttpMethod
  from std/jsffi import JsObject
  from std/sugar import `=>`

  block:
    let options0: FetchOptions = unsafeNewFetchOptions(
      metod = "POST".cstring,
      body = """{"key": "value"}""".cstring,
      mode = "no-cors".cstring,
      credentials = "omit".cstring,
      cache = "no-cache".cstring,
      referrerPolicy = "no-referrer".cstring,
      keepalive = false,
      redirect = "follow".cstring,
      referrer = "client".cstring,
      integrity = "".cstring,
      headers = newHeaders()
    )
    assert options0.keepalive == false
    assert options0.metod == "POST".cstring
    assert options0.body == """{"key": "value"}""".cstring
    assert options0.mode == "no-cors".cstring
    assert options0.credentials == "omit".cstring
    assert options0.cache == "no-cache".cstring
    assert options0.referrerPolicy == "no-referrer".cstring
    assert options0.redirect == "follow".cstring
    assert options0.referrer == "client".cstring
    assert options0.integrity == "".cstring
    assert options0.headers.len == 0

  block:
    let options1: FetchOptions = newFetchOptions(
      metod =  HttpPost,
      body = """{"key": "value"}""".cstring,
      mode = fmNoCors,
      credentials = fcOmit,
      cache = fchNoCache,
      referrerPolicy = frpNoReferrer,
      keepalive = false,
      redirect = frFollow,
      referrer = "client".cstring,
      integrity = "".cstring,
      headers = newHeaders()
    )
    assert options1.keepalive == false
    assert options1.metod == $HttpPost
    assert options1.body == """{"key": "value"}""".cstring
    assert options1.mode == $fmNoCors
    assert options1.credentials == $fcOmit
    assert options1.cache == $fchNoCache
    assert options1.referrerPolicy == $frpNoReferrer
    assert options1.redirect == $frFollow
    assert options1.referrer == "client".cstring
    assert options1.integrity == "".cstring
    assert options1.headers.len == 0

  block:
    let response: Response = newResponse(body = "-. .. --".cstring)
    let request: Request = newRequest(url = "http://nim-lang.org".cstring)

  if not defined(nodejs):
    block:
      proc doFetch(): Future[Response] {.async.} =
        fetch "https://httpbin.org/get".cstring

      proc example() {.async.} =
        let response: Response = await doFetch()
        assert response.ok
        assert response.status == 200.cint
        assert response.headers is Headers
        assert response.body is cstring

      discard example()

    block:
      proc example2 {.async.} =
        await fetch("https://api.github.com/users/torvalds".cstring)
          .then((response: Response) => response.json())
          .then((json: JsObject) => console.log(json))
          .catch((err: Error) => console.log("Request Failed", err))

      discard example2()
