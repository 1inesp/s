# Create a .secrets file in your repo root (act will pick this up by default)
# Add your dummy token here:
# Example .secrets file content:
# TAGBOT_TOKEN=これが私のローカルテスト用ダミートークンです_act
# GITHUB_TOKEN=dummy_local_github_token_act

echo "TAGBOT_TOKEN=foo_tagbot_token" > .secrets
echo "GITHUB_TOKEN=foo_github_token" >> .secrets

# Run the specific job for a pull_request event
act workflow_dispatch --job AutoMerge-regular -e event.json
