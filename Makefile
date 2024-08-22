# Variables
SCRIPT_NAME = fdb-extractor.sh

# Default task (running with 'make')
all: dependencies

# Updating packages and installing dependencies
dependencies:
	@echo "Installing dependencies..."
	apt update
	apt install -y binwalk imagemagick
	chmod +x $(SCRIPT_NAME)
	@echo "Now you can run $(SCRIPT_NAME)"
