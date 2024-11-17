<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
    <meta name="description" content="" />
    <meta name="author" content="" />
    <title>Resume - Start Bootstrap Theme</title>
    <link rel="icon" type="image/x-icon" href="assets/img/favicon.ico" />
    <!-- Font Awesome icons (free version)-->
    <script src="https://use.fontawesome.com/releases/v6.1.0/js/all.js" crossorigin="anonymous"></script>
    <!-- Google fonts-->
    <link href="https://fonts.googleapis.com/css?family=Saira+Extra+Condensed:500,700" rel="stylesheet"
        type="text/css" />
    <link href="https://fonts.googleapis.com/css?family=Muli:400,400i,800,800i" rel="stylesheet" type="text/css" />
    <!-- Core theme CSS (includes Bootstrap)-->
    <link href="{{ asset('depan') }}/css/styles.css" rel="stylesheet" />
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/gh/devicons/devicon@v2.15.1/devicon.min.css">

    <!-- Custom CSS -->
    <style>
        body {
            background-color:beige; /* Warna kuning */
        }
        .text-primary {
            color: #fdd835 !important; /* Mengubah warna teks utama menjadi kuning gelap */
        }
        .navbar-dark.bg-primary {
            background-color: #fbc02d !important; /* Navbar menjadi kuning */
        }
        .social-icon i {
            color: #ffeb3b; /* Mengubah warna ikon media sosial menjadi kuning */
        }
        .resume-section-content h2,
        .resume-section-content h3 {
            color: #f57f17; /* Warna kuning gelap untuk judul bagian */
        }
    </style>
</head>

<body id="page-top">
    <!-- Navigation-->
    <nav class="navbar navbar-expand-lg navbar-dark bg-primary fixed-top" id="sideNav">
        <a class="navbar-brand js-scroll-trigger" href="#page-top">
            <span class="d-block d-lg-none">{{ isset($about) ? $about->judul : 'My Resume' }}</span>
            <span class="d-none d-lg-block"><img class="img-fluid img-profile rounded-circle mx-auto mb-2"
                    src="{{ asset('foto') . '/' . (get_meta_value('_foto') ?? 'default.png') }}" alt="..." /></span>
        </a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarResponsive"
            aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation"><span
                class="navbar-toggler-icon"></span></button>
        <div class="collapse navbar-collapse" id="navbarResponsive">
            <ul class="navbar-nav">
                <li class="nav-item"><a class="nav-link js-scroll-trigger" href="#about">About</a></li>
                <li class="nav-item"><a class="nav-link js-scroll-trigger" href="#experience">Experience</a></li>
                <li class="nav-item"><a class="nav-link js-scroll-trigger" href="#education">Education</a></li>
                <li class="nav-item"><a class="nav-link js-scroll-trigger" href="#skills">Skills</a></li>
                <li class="nav-item"><a class="nav-link js-scroll-trigger" href="#interests">Interests</a></li>
                <li class="nav-item"><a class="nav-link js-scroll-trigger" href="#awards">Awards</a></li>
            </ul>
        </div>
    </nav>
    <!-- Page Content-->
    <div class="container-fluid p-0">
        <!-- About-->
        <section class="resume-section" id="about">
            <div class="resume-section-content">
                <h1 class="mb-0">
                    {!! isset($about) ? set_about_nama($about->judul) : 'Artika Suci Salsabila' !!}
                </h1>
                <div class="subheading mb-5">
                    {{ get_meta_value('_kota') ?? 'City' }} · {{ get_meta_value('_provinsi') ?? 'State' }} · 
                    {{ get_meta_value('_nohp') ?? 'Phone Number' }} ·
                    <a href="{{ get_meta_value('_email') ?? '#' }}">{{ get_meta_value('_email') ?? 'Email' }}</a>
                </div>
                <div class="lead mb-5">{!! isset($about) ? $about->isi : 'This is a brief bio or introduction.' !!}</div>
                <div class="social-icons">
                    <a class="social-icon" href="{{ get_meta_value('_linkedin') ?? '#' }}"><i
                            class="fab fa-linkedin-in"></i></a>
                    <a class="social-icon" href="{{ get_meta_value('_github') ?? '#' }}"><i class="fab fa-github"></i></a>
                    <a class="social-icon" href="{{ get_meta_value('_twitter') ?? '#' }}"><i class="fab fa-twitter"></i></a>
                    <a class="social-icon" href="{{ get_meta_value('_facebook') ?? '#' }}"><i
                            class="fab fa-facebook-f"></i></a>
                </div>
            </div>
        </section>
        <hr class="m-0" />
        <!-- Experience-->
        <section class="resume-section" id="experience">
            <div class="resume-section-content">
                <h2 class="mb-5">Experience</h2>
                @foreach ($experience ?? [] as $item)
                    <div class="d-flex flex-column flex-md-row justify-content-between mb-5">
                        <div class="flex-grow-1">
                            <h3 class="mb-0">{{ $item->judul ?? 'Job Title' }}</h3>
                            <div class="subheading mb-3">{{ $item->info1 ?? 'Company Name' }}</div>
                            {!! $item->isi ?? '' !!}
                        </div>
                        <div class="flex-shrink-0"><span class="text-primary">{{ $item->tgl_mulai_indo ?? '' }} - 
                            {{ $item->tgl_akhir_indo ?? 'Present' }}</span></div>
                    </div>
                @endforeach
            </div>
        </section>
        <hr class="m-0" />
        <!-- Education-->
        <section class="resume-section" id="education">
            <div class="resume-section-content">
                <h2 class="mb-5">Education</h2>
                @foreach ($education ?? [] as $item)
                    <div class="d-flex flex-column flex-md-row justify-content-between mb-5">
                        <div class="flex-grow-1">
                            <h3 class="mb-0">{{ $item->judul ?? 'Degree' }}</h3>
                            <div class="subheading mb-3">{{ $item->info1 ?? 'Institution Name' }}</div>
                            <div>{{ $item->info2 ?? 'Additional Info' }}</div>
                            <p>{{ $item->info3 ?? 'Description or Achievements' }}</p>
                        </div>
                        <div class="flex-shrink-0"><span class="text-primary">{{ $item->tgl_mulai_indo ?? '' }} - 
                            {{ $item->tgl_akhir_indo ?? 'Present' }}</span></div>
                    </div>
                @endforeach
            </div>
        </section>
        <hr class="m-0" />
        <!-- Skills-->
        <section class="resume-section" id="skills">
            <div class="resume-section-content">
                <h2 class="mb-5">Skills</h2>
                <div class="subheading mb-3">Programming Languages & Tools</div>
                <ul class="list-inline dev-icons">
                    @foreach (explode(', ', get_meta_value('_language') ?? '') as $item)
                        <li class="list-inline-item"><i class="devicon-{{ strtolower($item) }}-plain"></i></li>
                    @endforeach
                </ul>
                <div class="subheading mb-3">Workflow</div>
                {!! set_list_workflow(get_meta_value('_workflow') ?? 'Agile Development, Team Collaboration') !!}
            </div>
        </section>
        <hr class="m-0" />
        <!-- Interests-->
        <section class="resume-section" id="interests">
            <div class="resume-section-content">
                <h2 class="mb-5">{{ isset($interest) ? $interest->judul : 'Interests' }}</h2>
                {{ isset($interest) ? $interest->isi : 'Interest description or hobbies.' }}
            </div>
        </section>
        <hr class="m-0" />
        <!-- Awards-->
        <section class="resume-section" id="awards">
            <div class="resume-section-content">
                <h2 class="mb-5">{{ isset($award) ? $award->judul : 'Awards & Certifications' }}</h2>
                {!! isset($award) ? set_list_award($award->isi) : '<ul><li>Award or Certification</li></ul>' !!}
            </div>
        </section>
    </div>
    <!-- Bootstrap core JS-->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
    <!-- Core theme JS-->
    <script src="{{ asset('depan') }}/js/scripts.js"></script>
</body>

</html>
