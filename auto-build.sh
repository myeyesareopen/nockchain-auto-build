#!/bin/bash
  
# Max retries times
MAX_RETRIES=20

# Function with retry capability
function execute_with_retry() {
    local cmd=$1
    local retries=0
    local exit_code=0

    while [[ $retries -lt $MAX_RETRIES ]]; do
        echo "Executing command: $cmd (Attempt $((retries+1))/$MAX_RETRIES)"

        # Execute command and capture output
        if eval "$cmd" 2>&1; then
            echo "✓   Command executed successfully"
            return 0
        else
            exit_code=$?
            echo "✗   Command execution failed, error code: $exit_code"
            ((retries++))
            sleep 10  # Wait 10 seconds before retrying
        fi
    done

    echo "🛑 Maximum retry attempts reached ($MAX_RETRIES), terminating execution"
    return $exit_code
}

# List of commands to execute
commands=(
    "make install-hoonc"
    "make build"
    "make install-nockchain-wallet"
    "make install-nockchain"
)

# Main execution loop
for cmd in "${commands[@]}"; do
    if ! execute_with_retry "$cmd"; then
        echo "❌ Critical error: Failed to complete '$cmd', check errors and run the script again"
        exit 1
    fi
done

echo "🎉 All commands completed successfully!"
