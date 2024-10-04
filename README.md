# 31778

## Current behavior

It looks like the `mix` manager handles git dependencies incorrectly and when `"datasource": "git-tags", "versioning": "hex"` renovate runs the hex versioning and reaches this line
https://github.com/renovatebot/renovate/blob/8b2d1fa101476880e075f57f4c28773101cefd9e/lib/modules/versioning/hex/index.ts#L104

As far as I understand [mix](https://hexdocs.pm/mix/1.12/Mix.Tasks.Deps.html) does not support version ranges for git dependencies.

It produces an invalid newVersion from `v.0.1` -> `== v0.2` which fails to download the tag (because it does not exist) and `mix deps.update` fails.

## Expected behavior

newVersion from `v.0.1` -> `v0.2`

## Link to the Renovate issue or Discussion

https://github.com/renovatebot/renovate/discussions/31778
