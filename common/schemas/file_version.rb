{
  :schema => {
    "$schema" => "http://www.archivesspace.org/archivesspace.json",
    "type" => "object",
    "properties" => {

      "file_uri" => {"type" => "string", "ifmissing" => "error"},
      "publish" => {"type" => "boolean", "default" => true},
      "use_statement" => {"type" => "string", "dynamic_enum" => "file_version_use_statement"},

      "xlink_actuate_attribute" => {
        "type" => "string",
        "enum" => ["none", "other", "onLoad", "onRequest"]
      },

      "xlink_show_attribute" => {
        "type" => "string",
        "enum" => ["new", "replace", "embed", "other", "none"]
      },


      "file_format_name" => {"type" => "string"},
      "file_format_version" => {"type" => "string"},
      "file_size_bytes" => {"type" => "integer"},

      "checksum" => {"type" => "string"},
      "checksum_method" => {"type" => "string", "dynamic_enum" => "file_version_checksum_methods"},

    },

    "additionalProperties" => false
  },
}
