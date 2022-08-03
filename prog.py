import yaml

with open("kitchen.yml") as f:
    read_data = yaml.safe_load(f)
    if read_data["provisioner"]["product_version"] == "17.9.46":
      read_data["provisioner"]["product_version"] = "17.10.0"
    with open ("kitchen.yml", "w") as h:      
      yaml = yaml.dump(read_data, h)
