-- Testing stuff
require "c4d_test"

-- Time step is 1.00 s
-- [time]=ms, [x][y][z]=cm, [r][g][b]=0-255
local points  =  "\x00\x00\x00\x00\xb4\x00\x00\x00\x3c\x00\x00\x00\x00\x00\x00\x00\x00\xe8\x03\x00\x00\xb4\x00\x00\x00\x3c\x00\x00\x00\x00\x00\x3f\x3f\x3f\xd0\x07\x00\x00\xb4\x00\x00\x00\x3c\x00\x00\x00\x00\x00\xc2\xc2\xc2\xb8\x0b\x00\x00\xb4\x00\x00\x00\x3c\x00\x00\x00\x23\x00\xf5\xf5\xf5\xa0\x0f\x00\x00\xb4\x00\x00\x00\x3c\x00\x00\x00\x23\x00\xfe\xfe\xfe\x88\x13\x00\x00\xb4\x00\x00\x00\x3c\x00\x00\x00\x23\x00\xfe\xfe\xfe\x70\x17\x00\x00\xb4\x00\x00\x00\x3c\x00\x00\x00\x23\x00\xff\xff\xff\x58\x1b\x00\x00\xb4\x00\x00\x00\x3c\x00\x00\x00\x23\x00\xff\xff\xff\x40\x1f\x00\x00\xb4\x00\x00\x00\x3d\x00\x00\x00\x25\x00\xff\xff\xff\x28\x23\x00\x00\xc4\x00\x00\x00\x66\x00\x00\x00\x71\x00\xff\xff\xff\x10\x27\x00\x00\xcd\x00\x00\x00\x7e\x00\x00\x00\x9c\x00\xff\xff\xff\xf8\x2a\x00\x00\xcd\x00\x00\x00\x7e\x00\x00\x00\x9c\x00\xff\xff\xff\xe0\x2e\x00\x00\xcd\x00\x00\x00\x7e\x00\x00\x00\x9c\x00\xff\xff\xff\xc8\x32\x00\x00\xcd\x00\x00\x00\x7e\x00\x00\x00\x9c\x00\xff\xff\xff\xb0\x36\x00\x00\xcd\x00\x00\x00\x7e\x00\x00\x00\x9c\x00\xff\xff\xff\x98\x3a\x00\x00\xcd\x00\x00\x00\x7e\x00\x00\x00\x9c\x00\xff\xff\xff\x80\x3e\x00\x00\xcd\x00\x00\x00\x7e\x00\x00\x00\x9c\x00\xff\xff\xff\x68\x42\x00\x00\xcd\x00\x00\x00\x7e\x00\x00\x00\x9c\x00\xfe\xff\xfe\x50\x46\x00\x00\xcd\x00\x00\x00\x7e\x00\x00\x00\x99\x00\xde\xff\xdf\x38\x4a\x00\x00\xcd\x00\x00\x00\x7e\x00\x00\x00\x9d\x00\x88\xff\x8c\x20\x4e\x00\x00\xce\x00\x00\x00\x7e\x00\x00\x00\xb1\x00\x09\xff\x11\x08\x52\x00\x00\xce\x00\x00\x00\x7e\x00\x00\x00\xc0\x00\x00\xff\x08\xf0\x55\x00\x00\xce\x00\x00\x00\x7e\x00\x00\x00\xae\x00\x98\xff\x9b\xd8\x59\x00\x00\xcd\x00\x00\x00\x7e\x00\x00\x00\x86\x00\x00\xff\x08\xc0\x5d\x00\x00\xcd\x00\x00\x00\x7e\x00\x00\x00\x6b\x00\x56\xff\x5b\xa8\x61\x00\x00\xcd\x00\x00\x00\x7e\x00\x00\x00\x76\x00\x00\xff\x08\x90\x65\x00\x00\xcd\x00\x00\x00\x7e\x00\x00\x00\x9e\x00\xc3\xff\xc5\x78\x69\x00\x00\xce\x00\x00\x00\x7e\x00\x00\x00\xc4\x00\x00\xff\x08\x60\x6d\x00\x00\xce\x00\x00\x00\x7e\x00\x00\x00\xcd\x00\x00\xff\x08\x48\x71\x00\x00\xce\x00\x00\x00\x7e\x00\x00\x00\xb1\x00\x00\xff\x08\x30\x75\x00\x00\xcd\x00\x00\x00\x7e\x00\x00\x00\x85\x00\x30\xff\x37\x18\x79\x00\x00\xcd\x00\x00\x00\x7e\x00\x00\x00\x6b\x00\x56\xff\x5b\x00\x7d\x00\x00\xcd\x00\x00\x00\x7e\x00\x00\x00\x76\x00\x00\xff\x08\xe8\x80\x00\x00\xcd\x00\x00\x00\x7e\x00\x00\x00\x9e\x00\xae\xff\xb1\xd0\x84\x00\x00\xce\x00\x00\x00\x7e\x00\x00\x00\xc4\x00\x00\xff\x08\xb8\x88\x00\x00\xce\x00\x00\x00\x7e\x00\x00\x00\xcd\x00\x00\xff\x08\xa0\x8c\x00\x00\xce\x00\x00\x00\x7e\x00\x00\x00\xb1\x00\x00\xff\x08\x88\x90\x00\x00\xcd\x00\x00\x00\x7e\x00\x00\x00\x85\x00\xb7\xff\xb9\x70\x94\x00\x00\xcd\x00\x00\x00\x7e\x00\x00\x00\x6b\x00\x56\xff\x5b\x58\x98\x00\x00\xcd\x00\x00\x00\x7e\x00\x00\x00\x76\x00\x00\xff\x08\x40\x9c\x00\x00\xcd\x00\x00\x00\x7e\x00\x00\x00\x9e\x00\x00\xff\x08\x28\xa0\x00\x00\xce\x00\x00\x00\x7e\x00\x00\x00\xc4\x00\x00\xff\x08\x10\xa4\x00\x00\xce\x00\x00\x00\x7e\x00\x00\x00\xcd\x00\x00\xff\x08\xf8\xa7\x00\x00\xce\x00\x00\x00\x7e\x00\x00\x00\xb1\x00\x00\xff\x08\xe0\xab\x00\x00\xcd\x00\x00\x00\x7e\x00\x00\x00\x85\x00\xbe\xff\xc0\xc8\xaf\x00\x00\xcd\x00\x00\x00\x7e\x00\x00\x00\x6b\x00\x56\xff\x5b\xb0\xb3\x00\x00\xcd\x00\x00\x00\x7e\x00\x00\x00\x76\x00\x00\xff\x08\x98\xb7\x00\x00\xcd\x00\x00\x00\x7e\x00\x00\x00\x9e\x00\x00\xff\x08\x80\xbb\x00\x00\xce\x00\x00\x00\x7e\x00\x00\x00\xc2\x00\xaf\xff\xb1\x68\xbf\x00\x00\xce\x00\x00\x00\x7e\x00\x00\x00\xc4\x00\x00\xff\x08\x50\xc3\x00\x00\xce\x00\x00\x00\x7e\x00\x00\x00\xa9\x00\x00\xff\x08\x38\xc7\x00\x00\xcd\x00\x00\x00\x7e\x00\x00\x00\x94\x00\x30\xff\x37\x20\xcb\x00\x00\xcd\x00\x00\x00\x7e\x00\x00\x00\x95\x00\x00\xff\x08\x08\xcf\x00\x00\xcd\x00\x00\x00\x7e\x00\x00\x00\x9c\x00\x00\xff\x08\xf0\xd2\x00\x00\xcd\x00\x00\x00\x7e\x00\x00\x00\x9c\x00\x12\xff\x1a\xd8\xd6\x00\x00\xcd\x00\x00\x00\x7e\x00\x00\x00\x9c\x00\xe2\xff\xe3\xc0\xda\x00\x00\xcd\x00\x00\x00\x7e\x00\x00\x00\x9c\x00\xf8\xff\xf9\xa8\xde\x00\x00\xcd\x00\x00\x00\x7e\x00\x00\x00\x9c\x00\xfe\xfe\xfe\x90\xe2\x00\x00\xcd\x00\x00\x00\x7e\x00\x00\x00\x9c\x00\xfd\xfd\xfd\x78\xe6\x00\x00\xcd\x00\x00\x00\x7e\x00\x00\x00\x9c\x00\xf9\xfa\xf9\x60\xea\x00\x00\xcd\x00\x00\x00\x7e\x00\x00\x00\x9c\x00\xf4\xf6\xf4\x48\xee\x00\x00\xcd\x00\x00\x00\x80\x00\x00\x00\x9e\x00\xee\xf1\xed\x30\xf2\x00\x00\xc3\x00\x00\x00\x98\x00\x00\x00\xad\x00\xe7\xeb\xe4\x18\xf6\x00\x00\xb8\x00\x00\x00\xb5\x00\x00\x00\xc0\x00\xdf\xe4\xda\x00\xfa\x00\x00\xb3\x00\x00\x00\xc3\x00\x00\x00\xc9\x00\xd8\xdd\xcf\xe8\xfd\x00\x00\xb1\x00\x00\x00\xc8\x00\x00\x00\xcc\x00\xd0\xd6\xc2\xd0\x01\x01\x00\xb1\x00\x00\x00\xc9\x00\x00\x00\xcc\x00\xca\xd0\xb4\xb8\x05\x01\x00\xb1\x00\x00\x00\xc9\x00\x00\x00\xcc\x00\xc4\xca\xa5\xa0\x09\x01\x00\xb1\x00\x00\x00\xc9\x00\x00\x00\xcc\x00\xc1\xc5\x95\x88\x0d\x01\x00\xb1\x00\x00\x00\xc9\x00\x00\x00\xcc\x00\xbf\xc1\x85\x70\x11\x01\x00\xb1\x00\x00\x00\xc9\x00\x00\x00\xcc\x00\xbf\xbe\x74\x58\x15\x01\x00\xb1\x00\x00\x00\xc9\x00\x00\x00\xcc\x00\xc2\xbd\x63\x40\x19\x01\x00\xb1\x00\x00\x00\xc9\x00\x00\x00\xcc\x00\xc7\xbe\x52\x28\x1d\x01\x00\xb1\x00\x00\x00\xc9\x00\x00\x00\xcc\x00\xce\xbf\x41\x10\x21\x01\x00\xb1\x00\x00\x00\xc9\x00\x00\x00\xcc\x00\xd7\xc2\x30\xf8\x24\x01\x00\xb1\x00\x00\x00\xc9\x00\x00\x00\xcc\x00\xe1\xc7\x21\xe0\x28\x01\x00\xb1\x00\x00\x00\xc9\x00\x00\x00\xcc\x00\xec\xcb\x14\xc8\x2c\x01\x00\xb1\x00\x00\x00\xc9\x00\x00\x00\xcc\x00\xf5\xd0\x09\xb0\x30\x01\x00\xb1\x00\x00\x00\xc9\x00\x00\x00\xcc\x00\xfc\xd3\x02\x98\x34\x01\x00\xb3\x00\x00\x00\xc9\x00\x00\x00\xcb\x00\xff\xd4\x00\x80\x38\x01\x00\xb5\x00\x00\x00\xc9\x00\x00\x00\xca\x00\xff\xd4\x00\x68\x3c\x01\x00\xb9\x00\x00\x00\xc9\x00\x00\x00\xc7\x00\xff\xd4\x00\x50\x40\x01\x00\xbd\x00\x00\x00\xc9\x00\x00\x00\xc4\x00\xff\xd4\x00\x38\x44\x01\x00\xc1\x00\x00\x00\xc9\x00\x00\x00\xbf\x00\xff\xd4\x00\x20\x48\x01\x00\xc6\x00\x00\x00\xc9\x00\x00\x00\xb8\x00\xff\xd4\x00\x08\x4c\x01\x00\xca\x00\x00\x00\xc9\x00\x00\x00\xb0\x00\xff\xd4\x00\xf0\x4f\x01\x00\xcd\x00\x00\x00\xc9\x00\x00\x00\xa5\x00\xff\xd4\x00\xd8\x53\x01\x00\xcc\x00\x00\x00\xc9\x00\x00\x00\x98\x00\xff\xd4\x00\xc0\x57\x01\x00\xc9\x00\x00\x00\xc9\x00\x00\x00\x8a\x00\xff\xd4\x00\xa8\x5b\x01\x00\xc0\x00\x00\x00\xc9\x00\x00\x00\x7d\x00\xff\xd4\x00\x90\x5f\x01\x00\xb4\x00\x00\x00\xc9\x00\x00\x00\x72\x00\xff\xd4\x00\x78\x63\x01\x00\xa3\x00\x00\x00\xc9\x00\x00\x00\x6c\x00\xff\xd4\x00\x60\x67\x01\x00\x92\x00\x00\x00\xc9\x00\x00\x00\x6c\x00\xff\xd4\x00\x48\x6b\x01\x00\x82\x00\x00\x00\xc9\x00\x00\x00\x71\x00\xff\xd4\x00\x30\x6f\x01\x00\x76\x00\x00\x00\xc9\x00\x00\x00\x7a\x00\xff\xd4\x00\x18\x73\x01\x00\x6d\x00\x00\x00\xc9\x00\x00\x00\x86\x00\xff\xd4\x00\x00\x77\x01\x00\x68\x00\x00\x00\xc9\x00\x00\x00\x91\x00\xff\xd4\x00\xe8\x7a\x01\x00\x66\x00\x00\x00\xc9\x00\x00\x00\x9c\x00\xff\xd4\x00\xd0\x7e\x01\x00\x67\x00\x00\x00\xc9\x00\x00\x00\xa4\x00\xfc\xd3\x02\xb8\x82\x01\x00\x68\x00\x00\x00\xc9\x00\x00\x00\xab\x00\xe6\xc8\x18\xa0\x86\x01\x00\x69\x00\x00\x00\xc9\x00\x00\x00\xaf\x00\xbe\xb5\x40\x88\x8a\x01\x00\x6a\x00\x00\x00\xc9\x00\x00\x00\xb2\x00\x89\x9b\x75\x70\x8e\x01\x00\x6b\x00\x00\x00\xc9\x00\x00\x00\xb4\x00\x53\x81\xab\x58\x92\x01\x00\x6c\x00\x00\x00\xc9\x00\x00\x00\xb7\x00\x26\x6c\xd8\x40\x96\x01\x00\x6d\x00\x00\x00\xc9\x00\x00\x00\xb9\x00\x0c\x5f\xf2\x28\x9a\x01\x00\x6f\x00\x00\x00\xc9\x00\x00\x00\xbb\x00\x02\x5a\xfc\x10\x9e\x01\x00\x72\x00\x00\x00\xc9\x00\x00\x00\xbf\x00\x00\x59\xfe\xf8\xa1\x01\x00\x76\x00\x00\x00\xc9\x00\x00\x00\xc4\x00\x00\x59\xfe\xe0\xa5\x01\x00\x7d\x00\x00\x00\xc9\x00\x00\x00\xc9\x00\x00\x59\xfe\xc8\xa9\x01\x00\x86\x00\x00\x00\xc9\x00\x00\x00\xce\x00\x04\x5b\xfa\xb0\xad\x01\x00\x91\x00\x00\x00\xc9\x00\x00\x00\xd1\x00\x0e\x60\xf0\x98\xb1\x01\x00\x9e\x00\x00\x00\xc9\x00\x00\x00\xd2\x00\x22\x69\xdc\x80\xb5\x01\x00\xac\x00\x00\x00\xc9\x00\x00\x00\xcf\x00\x40\x78\xbe\x68\xb9\x01\x00\xb8\x00\x00\x00\xc9\x00\x00\x00\xc8\x00\x68\x8b\x96\x50\xbd\x01\x00\xc1\x00\x00\x00\xc9\x00\x00\x00\xbf\x00\x96\xa2\x68\x38\xc1\x01\x00\xc8\x00\x00\x00\xc9\x00\x00\x00\xb4\x00\xc4\xb8\x3a\x20\xc5\x01\x00\xcc\x00\x00\x00\xc9\x00\x00\x00\xaa\x00\xea\xca\x14\x08\xc9\x01\x00\xcd\x00\x00\x00\xc9\x00\x00\x00\xa0\x00\xfe\xd4\x00\xf0\xcc\x01\x00\xcd\x00\x00\x00\xc9\x00\x00\x00\x99\x00\xf6\xd0\x08\xd8\xd0\x01\x00\xcc\x00\x00\x00\xc9\x00\x00\x00\x94\x00\xd3\xbf\x2b\xc0\xd4\x01\x00\xcb\x00\x00\x00\xc9\x00\x00\x00\x90\x00\x9f\xa6\x5f\xa8\xd8\x01\x00\xca\x00\x00\x00\xc9\x00\x00\x00\x8e\x00\x68\x8b\x96\x90\xdc\x01\x00\xca\x00\x00\x00\xc9\x00\x00\x00\x8c\x00\x39\x75\xc5\x78\xe0\x01\x00\xc9\x00\x00\x00\xc9\x00\x00\x00\x8a\x00\x18\x65\xe6\x60\xe4\x01\x00\xc8\x00\x00\x00\xc9\x00\x00\x00\x88\x00\x07\x5c\xf7\x48\xe8\x01\x00\xc6\x00\x00\x00\xc9\x00\x00\x00\x85\x00\x01\x59\xfd\x30\xec\x01\x00\xc3\x00\x00\x00\xc9\x00\x00\x00\x80\x00\x00\x59\xfe\x18\xf0\x01\x00\xbf\x00\x00\x00\xc9\x00\x00\x00\x7b\x00\x00\x59\xfe\x00\xf4\x01\x00\xb8\x00\x00\x00\xc9\x00\x00\x00\x75\x00\x00\x59\xfe\xe8\xf7\x01\x00\xaf\x00\x00\x00\xc9\x00\x00\x00\x70\x00\x05\x5c\xf9\xd0\xfb\x01\x00\xa3\x00\x00\x00\xc9\x00\x00\x00\x6c\x00\x12\x62\xec\xb8\xff\x01\x00\x95\x00\x00\x00\xc9\x00\x00\x00\x6b\x00\x28\x6c\xd6\xa0\x03\x02\x00\x87\x00\x00\x00\xc9\x00\x00\x00\x6f\x00\x49\x7c\xb5\x88\x07\x02\x00\x7b\x00\x00\x00\xc9\x00\x00\x00\x75\x00\x73\x90\x8b\x70\x0b\x02\x00\x71\x00\x00\x00\xc9\x00\x00\x00\x7f\x00\xa1\xa7\x5d\x58\x0f\x02\x00\x6b\x00\x00\x00\xc9\x00\x00\x00\x8a\x00\xce\xbd\x30\x40\x13\x02\x00\x67\x00\x00\x00\xc9\x00\x00\x00\x94\x00\xf1\xcd\x0d\x28\x17\x02\x00\x66\x00\x00\x00\xc9\x00\x00\x00\x9e\x00\xff\xd4\x00\x10\x1b\x02\x00\x67\x00\x00\x00\xc9\x00\x00\x00\xa5\x00\xef\xcd\x0f\xf8\x1e\x02\x00\x68\x00\x00\x00\xc9\x00\x00\x00\xab\x00\xc8\xb9\x36\xe0\x22\x02\x00\x69\x00\x00\x00\xc9\x00\x00\x00\xb0\x00\x92\xa0\x6c\xc8\x26\x02\x00\x6b\x00\x00\x00\xc9\x00\x00\x00\xb4\x00\x5c\x86\xa2\xb0\x2a\x02\x00\x6d\x00\x00\x00\xc9\x00\x00\x00\xb8\x00\x30\x70\xce\x98\x2e\x02\x00\x6f\x00\x00\x00\xc9\x00\x00\x00\xbc\x00\x13\x62\xeb\x80\x32\x02\x00\x73\x00\x00\x00\xc9\x00\x00\x00\xc0\x00\x05\x5b\xf9\x68\x36\x02\x00\x77\x00\x00\x00\xc9\x00\x00\x00\xc5\x00\x00\x59\xfe\x50\x3a\x02\x00\x7d\x00\x00\x00\xc9\x00\x00\x00\xc9\x00\x00\x59\xfe\x38\x3e\x02\x00\x85\x00\x00\x00\xc9\x00\x00\x00\xce\x00\x00\x59\xfe\x20\x42\x02\x00\x90\x00\x00\x00\xc9\x00\x00\x00\xd1\x00\x01\x5a\xfd\x08\x46\x02\x00\x9d\x00\x00\x00\xc9\x00\x00\x00\xd2\x00\x08\x5d\xf6\xf0\x49\x02\x00\xaa\x00\x00\x00\xc9\x00\x00\x00\xcf\x00\x16\x64\xe8\xd8\x4d\x02\x00\xb6\x00\x00\x00\xc9\x00\x00\x00\xc9\x00\x2f\x70\xcf\xc0\x51\x02\x00\xc0\x00\x00\x00\xc9\x00\x00\x00\xc1\x00\x52\x81\xac\xa8\x55\x02\x00\xc7\x00\x00\x00\xc9\x00\x00\x00\xb7\x00\x7d\x95\x81\x90\x59\x02\x00\xcb\x00\x00\x00\xc9\x00\x00\x00\xad\x00\xac\xac\x52\x78\x5d\x02\x00\xcd\x00\x00\x00\xc9\x00\x00\x00\xa5\x00\xd7\xc1\x27\x60\x61\x02\x00\xcd\x00\x00\x00\xc9\x00\x00\x00\x9f\x00\xdf\xc6\x23\x48\x65\x02\x00\xcd\x00\x00\x00\xc9\x00\x00\x00\x9e\x00\xc0\xc4\x91\x30\x69\x02\x00\xcd\x00\x00\x00\xc9\x00\x00\x00\x9e\x00\xeb\xef\xec\x18\x6d\x02\x00\xcd\x00\x00\x00\xc9\x00\x00\x00\x9e\x00\xfe\xfe\xfe\x00\x71\x02\x00\xcd\x00\x00\x00\xc9\x00\x00\x00\x9e\x00\xff\xff\xff\xe8\x74\x02\x00\xcd\x00\x00\x00\xc9\x00\x00\x00\x9e\x00\xff\xff\xff\xd0\x78\x02\x00\xcd\x00\x00\x00\xc9\x00\x00\x00\x9e\x00\xff\xff\xff\xb8\x7c\x02\x00\xcd\x00\x00\x00\xc9\x00\x00\x00\x9e\x00\xff\xff\xff\xa0\x80\x02\x00\xcd\x00\x00\x00\xc9\x00\x00\x00\x9e\x00\xff\xff\xff\x88\x84\x02\x00\xcd\x00\x00\x00\xc9\x00\x00\x00\x9e\x00\xff\xff\xff\x70\x88\x02\x00\xcd\x00\x00\x00\xc9\x00\x00\x00\x9e\x00\xff\xff\xff\x58\x8c\x02\x00\xcd\x00\x00\x00\xc9\x00\x00\x00\x9e\x00\xff\xff\xff\x40\x90\x02\x00\xcd\x00\x00\x00\xc9\x00\x00\x00\x9e\x00\xff\xff\xff\x28\x94\x02\x00\xcd\x00\x00\x00\xc9\x00\x00\x00\x9e\x00\xff\xff\xff\x10\x98\x02\x00\xcd\x00\x00\x00\xc9\x00\x00\x00\x9e\x00\xff\xff\xff\xf8\x9b\x02\x00\xcd\x00\x00\x00\xc9\x00\x00\x00\x9e\x00\xff\xff\xff\xe0\x9f\x02\x00\xcd\x00\x00\x00\xc9\x00\x00\x00\x9e\x00\xff\xff\xff\xc8\xa3\x02\x00\xc7\x00\x00\x00\xa8\x00\x00\x00\x81\x00\xff\xff\xff\xb0\xa7\x02\x00\xb6\x00\x00\x00\x4a\x00\x00\x00\x2f\x00\xff\xff\xff\x98\xab\x02\x00\xb4\x00\x00\x00\x3c\x00\x00\x00\x23\x00\xff\xff\xff\x80\xaf\x02\x00\xb4\x00\x00\x00\x3c\x00\x00\x00\x23\x00\xff\xff\xff\x68\xb3\x02\x00\xb4\x00\x00\x00\x3c\x00\x00\x00\x23\x00\xff\xff\xff\x50\xb7\x02\x00\xb4\x00\x00\x00\x3c\x00\x00\x00\x23\x00\xff\xff\xff\x38\xbb\x02\x00\xb4\x00\x00\x00\x3c\x00\x00\x00\x23\x00\xff\xff\xff\x20\xbf\x02\x00\xb4\x00\x00\x00\x3c\x00\x00\x00\x23\x00\xff\xff\xff\x08\xc3\x02\x00\xb4\x00\x00\x00\x3c\x00\x00\x00\x23\x00\xff\xff\xff\xf0\xc6\x02\x00\xb4\x00\x00\x00\x3c\x00\x00\x00\x23\x00\xff\xff\xff\xd8\xca\x02\x00\xb4\x00\x00\x00\x3c\x00\x00\x00\x23\x00\xff\xff\xff\xc0\xce\x02\x00\xb4\x00\x00\x00\x3c\x00\x00\x00\x23\x00\xff\xff\xff\xa8\xd2\x02\x00\xb4\x00\x00\x00\x3c\x00\x00\x00\x23\x00\xff\xff\xff\x90\xd6\x02\x00\xb4\x00\x00\x00\x3c\x00\x00\x00\x23\x00\xff\xff\xff\x78\xda\x02\x00\xb4\x00\x00\x00\x3c\x00\x00\x00\x21\x00\xff\xff\xff\x60\xde\x02\x00\xb4\x00\x00\x00\x3c\x00\x00\x00\x16\x00\xfe\xfe\xfe\x48\xe2\x02\x00\xb4\x00\x00\x00\x3c\x00\x00\x00\x06\x00\xfe\xfe\xfe\x30\xe6\x02\x00\xb4\x00\x00\x00\x3c\x00\x00\x00\x00\x00\xfe\xfe\xfe\x18\xea\x02\x00\xb4\x00\x00\x00\x3c\x00\x00\x00\x00\x00\xfd\xfd\xfd\x00\xee\x02\x00\xb4\x00\x00\x00\x3c\x00\x00\x00\x00\x00\xfc\xfc\xfc\xe8\xf1\x02\x00\xb4\x00\x00\x00\x3c\x00\x00\x00\x00\x00\xf8\xf8\xf8\xd0\xf5\x02\x00\xb4\x00\x00\x00\x3c\x00\x00\x00\x00\x00\xf1\xf1\xf1\xb8\xf9\x02\x00\xb4\x00\x00\x00\x3c\x00\x00\x00\x00\x00\xe5\xe5\xe5\xa0\xfd\x02\x00\xb4\x00\x00\x00\x3c\x00\x00\x00\x00\x00\xd3\xd3\xd3\x88\x01\x03\x00\xb4\x00\x00\x00\x3c\x00\x00\x00\x00\x00\xb7\xb7\xb7\x70\x05\x03\x00\xb4\x00\x00\x00\x3c\x00\x00\x00\x00\x00\x92\x92\x92\x58\x09\x03\x00\xb4\x00\x00\x00\x3c\x00\x00\x00\x00\x00\x67\x67\x67\x40\x0d\x03\x00\xb4\x00\x00\x00\x3c\x00\x00\x00\x00\x00\x3d\x3d\x3d\x28\x11\x03\x00\xb4\x00\x00\x00\x3c\x00\x00\x00\x00\x00\x1b\x1b\x1b\x10\x15\x03\x00\xb4\x00\x00\x00\x3c\x00\x00\x00\x00\x00\x07\x07\x07\xf8\x18\x03\x00\xb4\x00\x00\x00\x3c\x00\x00\x00\x00\x00\x00\x00\x00\xe0\x1c\x03\x00\xb4\x00\x00\x00\x3c\x00\x00\x00\x00\x00\x00\x00\x00\xc8\x20\x03\x00\xb4\x00\x00\x00\x3c\x00\x00\x00\x00\x00\x00\x00\x00\xb0\x24\x03\x00\xb4\x00\x00\x00\x3c\x00\x00\x00\x00\x00\x00\x00\x00"
local points_count = 206
local str_format = "iiiHBBB"
--for n = 0, 206 do
    --t, x, y, z, r, g, b, _ = string.unpack(str_format, points, 1 + n * string.packsize(str_format))
    --print (t/1000, x/100, y/100, z/100, r/255, g/255, b/255)
--end 

local Animation = {}

function Animation.new(points_str, colors_str)

	local tblUnpack = table.unpack   
	local strUnpack = string.unpack

	local state = {stop = 0, idle = 1, takeoff = 2, flight = 3, landing = 4}

	local function getGlobalTime()	
		return time() + deltaTime()
	end

	local Color = {}
		Color.colors_str_size = string.packsize(str_format)
		Color.colors_str = points_str	-- TODO: colors string
		Color.first_led = 4
		Color.last_led = 28
		Color.leds = Ledbar.new(29)
    
    function Color.getColor(index)
        local t, _, _, _, r, g, b, _ = strUnpack(str_format, Color.colors_str, 1 + index * Color.colors_str_size)
        t = t / 1000
        r = r / 255
        g = g / 255
        b = b / 255
        return t, r, g, b
    end

    function Color.setMatrix(r, g, b)
		for i = Color.first_led, Color.last_led, 1 do
			Color.leds:set(i, r, g, b)
		end
    end

	local Point = {}
		Point.points_str_size = string.packsize(str_format)
		Point.points_str = points_str

    function Point.getPoint(index)
        local t, x, y, z = strUnpack(str_format, Point.points_str, 1 + index * Point.points_str_size)
        t = t / 1000
        x = x / 100
        y = y / 100
        z = z / 100
        return t, x, y, z
    end

    local Config = {}
    		Config.t_after_prepare = 1
	    	Config.t_after_takeoff = 1
	    	Config.init_index = 1
	    	Config.last_index = points_count

	local obj = {}
    	obj.state = state.stop
     	obj.global_time_0 = 0
     	obj.t_init = 0

	function obj:eventHandler(e)	
		if self.state ~= state.stop then	
	      	if e == Ev.SYNC_START then
	      		self.global_time_0 = getGlobalTime() + Config.t_after_prepare + Config.t_after_takeoff
	      		self:animInit()
			end
		end
	end

	function obj.setConfig(init_index, last_index, time_after_prepare, time_after_takeoff)
    	Config.init_index = init_index or 1
    	Config.last_index = last_index or points_count
    	Config.t_after_prepare = time_after_prepare or 1
    	Config.t_after_takeoff = time_after_takeoff or 1
	end

	function obj:animInit()
		self.state = state.flight
        ap.push(Ev.MCE_PREFLIGHT) 
        sleep(Config.t_after_prepare)
        ap.push(Ev.MCE_TAKEOFF) -- Takeoff altitude should be set by AP parameter
        self.t_init = Point.getPoint(Config.init_index)
        Timer.callAtGlobal(self.global_time_0, 	function () self:animLoop(Config.init_index) end)
	end

	function obj:animLoop(point_index)
      	if self.state == state.flight and point_index <= Config.last_index then
	        local _, x, y, z = Point.getPoint(point_index)
	        local t = Point.getPoint(point_index + 1)
	        ap.goToLocalPoint(x, y, z)
	        Timer.callAtGlobal(self.global_time_0 + t - self.t_init, function () self:animLoop(point_index + 1) end)
    	else
    		self.state = state.landing
    		ap.push(Ev.MCE_LANDING)
    	end
   	end

   	function obj:start()
   		self.state = state.idle
   	end

	Animation.__index = Animation 
	return setmetatable(obj, Animation)
end

function callback(event)
   anim:eventHandler(event)
end

anim = Animation.new(points, _)
anim.setConfig(3, 5)
anim:start()
-- print (dump(anim))

callback(Ev.SYNC_START)