
# export def to-crlf [file_path: string] {
#     let file_content = open $file_path | str replace --all "\n" "\r\n"
#     $file_content | save --force $file_path
# }


# export def to-crlf [rule: string] {
#     echo $rule
#     let file_list = glob $rule; 
#     echo $file_list
#     $file_list | each { |$it| {
#         let file_content = (open $it | str replace --all "\n" "\r\n");
#         echo $file_content
#         $file_content | save --force $it;
#     }}
# }

# $env.HTTP_PROXY = "http://127.0.0.1:10809";
# $env.HTTPS_PROXY = "http://127.0.0.1:10809;

# export def nuproxy [] {
#     $env.HTTP_PROXY = "http://127.0.0.1:7890"
#     $env.HTTPS_PROXY = "http://127.0.0.1:7890"
# }
# export def unproxy [] {
#     $env.HTTP_PROXY = ""
#     $env.HTTPS_PROXY = ""
# }

# alias nuproxy = ( $env.HTTP_PROXY = "http://127.0.0.1:7890"; $env.HTTPS_PROXY = "http://127.0.0.1:7890"; )
# alias unproxy = ( $env.HTTP_PROXY = ""; $env.HTTPS_PROXY = ""; )

export module proxy {
    export-env {
        load-env { HTTP_PROXY: "http://127.0.0.1:7890", HTTPS_PROXY: "http://127.0.0.1:7890" }
    }
}
