# generic-server-cookbook
Generic server cookbook will be applied on all server's


## Setting up password authentication.

By default this cookbook disables password authentication for security reasons.

You can add exception, by adding some predefined attributes.

Ruby style (attribute files or wrapper cookbook):

```ruby
default['openssh'] =
{
        "server" =>
        {
        
                "match" =>
                {
                        "Address 192.168.1.0/24" => { "password_authentication" => "yes" }
                }
        }

```

JSON style (role, server):

```json
"override_attributes": {

"openssh": {
  "server": {
	"match": {
	  "Address 192.168.1.0/24" : { "password_authentication" : "yes" }
      }
    }
  },
}
```

