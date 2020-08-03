# terraform-module-template
![](https://github.com/actions/hello-world/workflows/.github/workflows/main.yml/badge.svg)

Terraform module for creation **CHAMGE_ME** with normalized name and tags.

## Usage

```hcl
module "your_aweasome_resource" {
  source    = ""
  namespace = "sweetops"
  stage     = "production"
  name      = "aweasome"
}
```

<!--- BEGIN_TF_DOCS --->
## Requirements

| Name | Version |
|------|---------|
| terraform | ~> 0.12.0 |

## Providers

No provider.

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| additional\_tag\_map | Additional tags for appending to each tag map | `map(string)` | `{}` | no |
| attributes | Additional attributes (e.g. `1`) | `list(string)` | `[]` | no |
| context | Default context to use for passing state between label invocations | <pre>object({<br>    namespace           = string<br>    environment         = string<br>    stage               = string<br>    name                = string<br>    enabled             = bool<br>    delimiter           = string<br>    attributes          = list(string)<br>    label_order         = list(string)<br>    tags                = map(string)<br>    additional_tag_map  = map(string)<br>    regex_replace_chars = string<br>  })</pre> | <pre>{<br>  "additional_tag_map": {},<br>  "attributes": [],<br>  "delimiter": "",<br>  "enabled": true,<br>  "environment": "",<br>  "label_order": [],<br>  "name": "",<br>  "namespace": "",<br>  "regex_replace_chars": "",<br>  "stage": "",<br>  "tags": {}<br>}</pre> | no |
| delimiter | Delimiter to be used between `namespace`, `stage`, `name` and `attributes` | `string` | `"-"` | no |
| enabled | Set to false to prevent the module from creating any resources | `bool` | `true` | no |
| label\_order | The naming order of the id output and Name tag | `list(string)` | `[]` | no |
| name | Solution name, e.g. `app` or `jenkins` | `string` | n/a | yes |
| namespace | Namespace, which could be your organization name or abbreviation, e.g. 'eg' or 'cp' | `string` | n/a | yes |
| regex\_replace\_chars | Regex to replace chars with empty string in `namespace`, `environment`, `stage` and `name`. By default only hyphens, letters and digits are allowed, all other chars are removed | `string` | `"/[^a-zA-Z0-9-]/"` | no |
| stage | Stage, e.g. 'prod', 'staging', 'dev' | `string` | n/a | yes |
| tags | Additional tags (e.g. `map('BusinessUnit','XYZ')` | `map(string)` | `{}` | no |

## Outputs

No output.

<!--- END_TF_DOCS --->

## License
The Apache-2.0 license
