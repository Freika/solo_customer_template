# frozen_string_literal: true

old_snake_case_name = ARGV[0]
old_camel_case_name = ARGV[0].to_s.split('_').collect(&:capitalize).join
new_snake_case_name = ARGV[1]
new_camel_case_name = ARGV[1].to_s.split('_').collect(&:capitalize).join

`sed -i '' -e 's/#{old_snake_case_name}/#{new_snake_case_name}/g' $(find . -type f)`
`sed -i '' -e 's/#{old_camel_case_name}/#{new_camel_case_name}/g' $(find . -type f)`
