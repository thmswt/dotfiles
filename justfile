# Justfile for dotfiles setup

# Default recipe
default:
    @just --list

# Run the main installation script
install:
    bash ./install.sh

# Install LogiTune
logitune:
    @echo "Installing LogiTune..."
    @installer_path=$(find /opt/homebrew/Caskroom/logitune -name "LogiTuneInstaller.app" | head -n 1); \
    if [ -z "$installer_path" ]; then \
        echo "LogiTune installer not found. Please ensure it is installed via brew."; \
        exit 1; \
    fi; \
    echo "Opening $installer_path"; \
    open "$installer_path"

# Configure macOS settings
macos:
    bash macos/settings.sh

# Setup local git config
git-local:
    touch ~/.gitconfig_local

# Import Rectangle config (instructions only as it requires manual import or GUI scripting)
rectangle:
    @echo "Please manually import the config file at config/RectangleConfig.json into Rectangle."

# Run all setup steps (excluding optional macOS settings)
setup: git-local install logitune rectangle

# Run all setup steps (including optional macOS settings)
full-setup: setup macos
