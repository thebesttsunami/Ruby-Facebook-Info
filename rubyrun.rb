require 'koala'

Gantilah dengan token akses pengguna yang sah
user_access_token = 'USER_ACCESS_TOKEN'  # Token akses pengguna yang diperoleh setelah login dan otorisasi

Membuat objek Koala untuk mengakses Graph API
graph = Koala::Facebook::API.new(user_access_token)

Mengambil data profil pengguna
profile = graph.get_object('me')
[29/12 19.42] ChatGPT: Mengambil data tambahan seperti nama, usia, tempat tinggal, dan asal
name = profile['name']
birthday = profile['birthday']  # Mengambil tanggal lahir (umur dapat dihitung dari tanggal lahir)
location = profile['location'] ? profile['location']['name'] : 'Tidak tersedia'
hometown = profile['hometown'] ? profile['hometown']['name'] : 'Tidak tersedia'

Menampilkan hasil
puts "Nama: #{name}"
puts "Tanggal Lahir: #{birthday}"
puts "Tempat Tinggal: #{location}"
puts "Asal: #{hometown}"
