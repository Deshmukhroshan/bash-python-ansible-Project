import json
with open() as f:
    data = f.read().strip().split('|')
info = {
    "hostname": data[0],
    "uptime": data[1],
    "disk_usage": data[2],
    "memory_usage": data[3]
}

with open('sysinfo.json', 'w') as f:
    json.dump(info, f, indent=2)