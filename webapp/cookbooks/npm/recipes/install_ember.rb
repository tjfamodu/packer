# EXAM TOOL
# installs ember-cli
ember_binary = "/usr/bin/ember-cli"

execute "/usr/bin/npm install -g ember-cli" do
    not_if { ::File.exists?(ember_binary) }
end