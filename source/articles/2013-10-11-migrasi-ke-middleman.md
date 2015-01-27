---
title: Migrasi ke Middleman & Github
date: 2013-10-11 16:00 WIB
tags: Tutorial
published: true
---


Sudah cukup lama saya menggunakan [Middleman] [1], *front-end development tool* berbasis Ruby, dalam pekerjaan saya. Bagi saya Middleman adalah *tool* terbaik untuk pekerjaan saya, terima kasih untuk [Thomas Reynolds] [2] atas ciptaannya.

Karena sehari-hari menggunakannya, saya mulai mempertimbangkan untuk memindahkan blog saya dari [Wordpress] [3] ke Middleman dengan menggunakan fasilitas [Github Pages] [10]. Proses migrasi ini sebenarnya sudah saya mulai dari hampir 2 bulan yang lalu, tapi berkali-kali tertunda karena urusan pekerjaan (dan malas), hingga akhirnya baru hari ini selesai.

## Proses Migrasi

Hal yang pertama saya lakukan adalah mengonversi tulisan dari Wordpress(`XML`) ke format `.markdown`. Setelah googling sebentar, akhirnya saya menggunakan sebuah plugin bernama [Wordpress to Jekyll] [4]. Meskipun plugin ini sebenarnya digunakan untuk konversi ke [Jekyll] [5], sebuah blog engine yang juga berbasis ruby, tetapi tidak masalah karena Middleman bisa membaca file `.markdown` juga. Proses konversi berjalan lancar tanpa kendala berarti.

Selanjutnya adalah kustomisasi blog, sampai disini semua lancar. Masalah baru muncul saat saya mencoba mempublikasikan blog saya ke Github.

Cara kerja Github Pages kurang lebih seperti ini: Pertama kita membuat repo dengan nama `username.github.io`. Setelah itu Github menawarkan 2 cara untuk membuat *pages* kita, menggunakan Automatic Page Generator atau manual. Github Pages membutuhkan 2 `branch` yaitu `master` yang digunakan oleh `source` *pages* dan `gh-pages` yang digunakan untuk mempublikasikan *pages*.

Pertama saya menggunakan [Middleman Github Pages] [6]. Setelah saya `push` ke repo saya di Github, muncul pesan error dari Github **"Your page is having problems building: page build failed"**. Padahal konten blog saya sudah berada di `gh-pages`.

Setelah googling, ternyata ada juga yang [mengalami masalah] [7] seperti saya. Dari situ saya menemukan pencerahan. Saya coba memakai [Middleman Deploy] [8] dan saya setting supaya konten blog langsung di-`push` ke `master`. BISA! Pesan error tidak muncul lagi dan tak lama kemudian blog saya sudah live di Github.

Setelah itu saya tinggal [setting custom domain] [9] dan melakukan beberapa perbaikan sana sini. Dan voila, inilah blog saya :)

[1]: http://middlemanapp.com/
[2]: http://awardwinningfjords.com/
[3]: http://wordpress.org
[4]: https://github.com/davidwinter/wordpress-to-jekyll
[5]: http://jekyllrb.com/
[6]: https://github.com/neo/middleman-gh-pages
[7]: https://twitter.com/middlemanapp/status/357243889234616320
[8]: https://github.com/tvaughan/middleman-deploy
[9]: https://help.github.com/articles/setting-up-a-custom-domain-with-pages
[10]: http://pages.github.com/
