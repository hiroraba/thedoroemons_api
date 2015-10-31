@path = "./"

worker_processes 1 # CPUのコア数に揃える
working_directory @path
timeout 300
pid "./unicorn.pid" # pidを保存するファイル
stderr_path "./unicorn.stderr.log"
stdout_path "./unicorn.stdout.log"
preload_app true
listen 9292
