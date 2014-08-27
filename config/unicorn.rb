# Set the working application directory
# working_directory "/path/to/your/app"
working_directory "/home/deployer/app/local301"

# Unicorn PID file location
# pid "/path/to/pids/unicorn.pid"
pid "/home/deployer/app/local301/pids/unicorn.pid"

# Path to logs
# stderr_path "/path/to/log/unicorn.log"
# stdout_path "/path/to/log/unicorn.log"
# stderr_path "/home/deployer/app/skelly_rails/log/unicorn.log"
# stdout_path "/home/deployer/app/skelly_rails/unicorn.log"

# Unicorn socket
listen "/tmp/unicorn.local301.sock"
# listen "/tmp/unicorn.myapp.sock"

# Number of processes
# worker_processes 4
worker_processes 2

# Time-out
timeout 30

