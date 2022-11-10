### Jelaskan apa yang dimaksud dengan stateless widget dan stateful widget dan jelaskan perbedaan dari keduanya.
Stateless widget merupakan widget yang isinya konstan atau isi yang ditampilkan bersifat tetap, sedangkan stateful adalah widget yang statis, isinya dapat berubah-ubah sesua dengan perintah yang ada/berjalan.

### Sebutkan widget apa saja yang kamu pakai di proyek kali ini dan jelaskan fungsinya.
+ Scaffold = Memberikan tema material yang menjadi dasar dari tampilan android pada waktu artikel ini dibuat.
+ Row = Mengurutkan children widget yang terdapat di dalamnya dalam bentuk berbaris atau dari atas ke bawah sesuai dengan order atau susunan dari children tersebut.
+ Column = Mengurutkan children widget yang terdapat di dalamnya dalam bentuk satu kolom atau dari kiri ke kanan sesuai dengan order atau susunan dari children tersebut.

### Apa fungsi dari setState()? Jelaskan variabel apa saja yang dapat terdampak dengan fungsi tersebut.
Fungsi setState() akan bertugas untuk memberitahu widget bahwa ada object yang berubah pada State, sehingga akan melakukan build ulang pada Widget tersebut.
Variabel-variabel yang berubah adalah bertambah atau berkurangnya _counter.

### Jelaskan perbedaan antara const dengan final.
Perbedaan utama ada pada inialisasi nilai (pemberian nilai) dari variabelnya, const mengharuskan variabel harus dinialisasi pada saat kompilasi, nilai bersifat konstan dan secara langsung / eksplisit sehingga pada saat kompilasi variabel const sudah memiliki nilai, sedangkan final tidak mengharuskan variabel memiliki nilai secara langsung / eskplisit pada saat kompilasi.

### Jelaskan bagaimana cara kamu mengimplementasikan checklist di atas.
+ Membuat sebuah program Flutter baru dengan nama counter_7 menggunakan command flutter create.
+ Menambahkan FloatingActionButton baru ke widget lalu menempatkan kedua button tersebut dalam satu widget row.
+ Membuat fungsi baru untuk mengurangi nilai _counter.
+ Pada bagian body, mengimplementasikan If Else untuk dapat menampilkan text ganjil-genap sesuai aturan (_counter % 2 == 0).
+ Menambahkan If Else untuk button negative/minus sebagai bonus tugas 7.
+ Melakukan init, dan add-commit-push ke github pribadi.
