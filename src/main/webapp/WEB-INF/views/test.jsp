<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!doctype html>
<html lang="en">
<!--begin::Head-->
<head>
    <%@include file="/WEB-INF/views/inc/header.jsp" %>
    <!-- Cal-Heatmap CSS & JS -->
    <!-- D3.js -->
    <script src="https://d3js.org/d3.v7.min.js"></script>

    <!-- Cal-Heatmap -->
    <script src="https://unpkg.com/cal-heatmap/dist/cal-heatmap.min.js"></script>
    <link rel="stylesheet" href="https://unpkg.com/cal-heatmap/dist/cal-heatmap.css">


    <!-- Bootstrap 5 CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">

    <!-- Bootstrap Bundle JS (includes Popper) -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
</head>
<!--end::Head-->
<!--begin::Body-->
<body class="layout-fixed sidebar-expand-lg bg-body-tertiary">
<!--begin::App Wrapper-->
<div class="app-wrapper">
    <!--begin::Header-->
    <nav class="app-header navbar navbar-expand bg-body">
        <!--begin::Container-->
        <div class="container-fluid">
            <!--begin::Start Navbar Links-->
            <ul class="navbar-nav">
                <li class="nav-item">
                    <a class="nav-link" data-lte-toggle="sidebar" href="#" role="button">
                        <i class="bi bi-list"></i>
                    </a>
                </li>
                <li class="nav-item d-none d-md-block"><a href="#" class="nav-link">Home</a></li>
                <li class="nav-item d-none d-md-block"><a href="#" class="nav-link">Contact</a></li>
            </ul>
            <!--end::Start Navbar Links-->
            <!--begin::End Navbar Links-->
            <ul class="navbar-nav ms-auto">
                <!--begin::Navbar Search-->
                <li class="nav-item">
                    <a class="nav-link" data-widget="navbar-search" href="#" role="button">
                        <i class="bi bi-search"></i>
                    </a>
                </li>
                <!--end::Navbar Search-->
                <!--begin::Messages Dropdown Menu-->
                <li class="nav-item dropdown">
                    <a class="nav-link" data-bs-toggle="dropdown" href="#">
                        <i class="bi bi-chat-text"></i>
                        <span class="navbar-badge badge text-bg-danger">3</span>
                    </a>
                    <div class="dropdown-menu dropdown-menu-lg dropdown-menu-end">
                        <a href="#" class="dropdown-item">
                            <!--begin::Message-->
                            <div class="d-flex">
                                <div class="flex-shrink-0">
                                    <img
                                            src="../../../dist/assets/img/user1-128x128.jpg"
                                            alt="User Avatar"
                                            class="img-size-50 rounded-circle me-3"
                                    />
                                </div>
                                <div class="flex-grow-1">
                                    <h3 class="dropdown-item-title">
                                        Brad Diesel
                                        <span class="float-end fs-7 text-danger"
                                        ><i class="bi bi-star-fill"></i
                                        ></span>
                                    </h3>
                                    <p class="fs-7">Call me whenever you can...</p>
                                    <p class="fs-7 text-secondary">
                                        <i class="bi bi-clock-fill me-1"></i> 4 Hours Ago
                                    </p>
                                </div>
                            </div>
                            <!--end::Message-->
                        </a>
                        <div class="dropdown-divider"></div>
                        <a href="#" class="dropdown-item">
                            <!--begin::Message-->
                            <div class="d-flex">
                                <div class="flex-shrink-0">
                                    <img
                                            src="../../../dist/assets/img/user8-128x128.jpg"
                                            alt="User Avatar"
                                            class="img-size-50 rounded-circle me-3"
                                    />
                                </div>
                                <div class="flex-grow-1">
                                    <h3 class="dropdown-item-title">
                                        John Pierce
                                        <span class="float-end fs-7 text-secondary">
                          <i class="bi bi-star-fill"></i>
                        </span>
                                    </h3>
                                    <p class="fs-7">I got your message bro</p>
                                    <p class="fs-7 text-secondary">
                                        <i class="bi bi-clock-fill me-1"></i> 4 Hours Ago
                                    </p>
                                </div>
                            </div>
                            <!--end::Message-->
                        </a>
                        <div class="dropdown-divider"></div>
                        <a href="#" class="dropdown-item">
                            <!--begin::Message-->
                            <div class="d-flex">
                                <div class="flex-shrink-0">
                                    <img
                                            src="../../../dist/assets/img/user3-128x128.jpg"
                                            alt="User Avatar"
                                            class="img-size-50 rounded-circle me-3"
                                    />
                                </div>
                                <div class="flex-grow-1">
                                    <h3 class="dropdown-item-title">
                                        Nora Silvester
                                        <span class="float-end fs-7 text-warning">
                          <i class="bi bi-star-fill"></i>
                        </span>
                                    </h3>
                                    <p class="fs-7">The subject goes here</p>
                                    <p class="fs-7 text-secondary">
                                        <i class="bi bi-clock-fill me-1"></i> 4 Hours Ago
                                    </p>
                                </div>
                            </div>
                            <!--end::Message-->
                        </a>
                        <div class="dropdown-divider"></div>
                        <a href="#" class="dropdown-item dropdown-footer">See All Messages</a>
                    </div>
                </li>
                <!--end::Messages Dropdown Menu-->
                <!--begin::Notifications Dropdown Menu-->
                <li class="nav-item dropdown">
                    <a class="nav-link" data-bs-toggle="dropdown" href="#">
                        <i class="bi bi-bell-fill"></i>
                        <span class="navbar-badge badge text-bg-warning">15</span>
                    </a>
                    <div class="dropdown-menu dropdown-menu-lg dropdown-menu-end">
                        <span class="dropdown-item dropdown-header">15 Notifications</span>
                        <div class="dropdown-divider"></div>
                        <a href="#" class="dropdown-item">
                            <i class="bi bi-envelope me-2"></i> 4 new messages
                            <span class="float-end text-secondary fs-7">3 mins</span>
                        </a>
                        <div class="dropdown-divider"></div>
                        <a href="#" class="dropdown-item">
                            <i class="bi bi-people-fill me-2"></i> 8 friend requests
                            <span class="float-end text-secondary fs-7">12 hours</span>
                        </a>
                        <div class="dropdown-divider"></div>
                        <a href="#" class="dropdown-item">
                            <i class="bi bi-file-earmark-fill me-2"></i> 3 new reports
                            <span class="float-end text-secondary fs-7">2 days</span>
                        </a>
                        <div class="dropdown-divider"></div>
                        <a href="#" class="dropdown-item dropdown-footer"> See All Notifications </a>
                    </div>
                </li>
                <!--end::Notifications Dropdown Menu-->
                <!--begin::Fullscreen Toggle-->
                <li class="nav-item">
                    <a class="nav-link" href="#" data-lte-toggle="fullscreen">
                        <i data-lte-icon="maximize" class="bi bi-arrows-fullscreen"></i>
                        <i data-lte-icon="minimize" class="bi bi-fullscreen-exit" style="display: none"></i>
                    </a>
                </li>
                <!--end::Fullscreen Toggle-->
                <!--begin::User Menu Dropdown-->
                <li class="nav-item dropdown user-menu">
                    <a href="#" class="nav-link dropdown-toggle" data-bs-toggle="dropdown">
                        <img
                                src="../../../dist/assets/img/user2-160x160.jpg"
                                class="user-image rounded-circle shadow"
                                alt="User Image"
                        />
                        <span class="d-none d-md-inline">Alexander Pierce</span>
                    </a>
                    <ul class="dropdown-menu dropdown-menu-lg dropdown-menu-end">
                        <!--begin::User Image-->
                        <li class="user-header text-bg-primary">
                            <img
                                    src="../../../dist/assets/img/user2-160x160.jpg"
                                    class="rounded-circle shadow"
                                    alt="User Image"
                            />
                            <p>
                                Alexander Pierce - Web Developer
                                <small>Member since Nov. 2023</small>
                            </p>
                        </li>
                        <!--end::User Image-->
                        <!--begin::Menu Body-->
                        <li class="user-body">
                            <!--begin::Row-->
                            <div class="row">
                                <div class="col-4 text-center"><a href="#">Followers</a></div>
                                <div class="col-4 text-center"><a href="#">Sales</a></div>
                                <div class="col-4 text-center"><a href="#">Friends</a></div>
                            </div>
                            <!--end::Row-->
                        </li>
                        <!--end::Menu Body-->
                        <!--begin::Menu Footer-->
                        <li class="user-footer">
                            <a href="#" class="btn btn-default btn-flat">Profile</a>
                            <a href="#" class="btn btn-default btn-flat float-end">Sign out</a>
                        </li>
                        <!--end::Menu Footer-->
                    </ul>
                </li>
                <!--end::User Menu Dropdown-->
            </ul>
            <!--end::End Navbar Links-->
        </div>
        <!--end::Container-->
    </nav>
    <!--end::Header-->
    <!--begin::Sidebar-->
    <aside class="app-sidebar bg-body-secondary shadow" data-bs-theme="dark">
        <!--begin::Sidebar Brand-->
        <div class="sidebar-brand">
            <!--begin::Brand Link-->
            <a href="../index.html" class="brand-link">
                <!--begin::Brand Image-->
                <img
                        src="../../../dist/assets/img/AdminLTELogo.png"
                        alt="AdminLTE Logo"
                        class="brand-image opacity-75 shadow"
                />
                <!--end::Brand Image-->
                <!--begin::Brand Text-->
                <span class="brand-text fw-light">AdminLTE 4</span>
                <!--end::Brand Text-->
            </a>
            <!--end::Brand Link-->
        </div>
        <!--end::Sidebar Brand-->
        <!--begin::Sidebar Wrapper-->
        <div class="sidebar-wrapper">
            <nav class="mt-2">
                <!--begin::Sidebar Menu-->
                <ul
                        class="nav sidebar-menu flex-column"
                        data-lte-toggle="treeview"
                        role="menu"
                        data-accordion="false"
                >
                    <li class="nav-item">
                        <a href="#" class="nav-link">
                            <i class="nav-icon bi bi-speedometer"></i>
                            <p>
                                Dashboard
                                <i class="nav-arrow bi bi-chevron-right"></i>
                            </p>
                        </a>
                        <ul class="nav nav-treeview">
                            <li class="nav-item">
                                <a href="../index.html" class="nav-link">
                                    <i class="nav-icon bi bi-circle"></i>
                                    <p>Dashboard v1</p>
                                </a>
                            </li>
                            <li class="nav-item">
                                <a href="../index2.html" class="nav-link">
                                    <i class="nav-icon bi bi-circle"></i>
                                    <p>Dashboard v2</p>
                                </a>
                            </li>
                            <li class="nav-item">
                                <a href="../index3.html" class="nav-link">
                                    <i class="nav-icon bi bi-circle"></i>
                                    <p>Dashboard v3</p>
                                </a>
                            </li>
                        </ul>
                    </li>
                    <li class="nav-item">
                        <a href="../generate/theme.html" class="nav-link">
                            <i class="nav-icon bi bi-palette"></i>
                            <p>Theme Generate</p>
                        </a>
                    </li>
                    <li class="nav-item">
                        <a href="#" class="nav-link">
                            <i class="nav-icon bi bi-box-seam-fill"></i>
                            <p>
                                Widgets
                                <i class="nav-arrow bi bi-chevron-right"></i>
                            </p>
                        </a>
                        <ul class="nav nav-treeview">
                            <li class="nav-item">
                                <a href="../widgets/small-box.html" class="nav-link">
                                    <i class="nav-icon bi bi-circle"></i>
                                    <p>Small Box</p>
                                </a>
                            </li>
                            <li class="nav-item">
                                <a href="../widgets/info-box.html" class="nav-link">
                                    <i class="nav-icon bi bi-circle"></i>
                                    <p>info Box</p>
                                </a>
                            </li>
                            <li class="nav-item">
                                <a href="../widgets/cards.html" class="nav-link">
                                    <i class="nav-icon bi bi-circle"></i>
                                    <p>Cards</p>
                                </a>
                            </li>
                        </ul>
                    </li>
                    <li class="nav-item">
                        <a href="#" class="nav-link">
                            <i class="nav-icon bi bi-clipboard-fill"></i>
                            <p>
                                Layout Options
                                <span class="nav-badge badge text-bg-secondary me-3">6</span>
                                <i class="nav-arrow bi bi-chevron-right"></i>
                            </p>
                        </a>
                        <ul class="nav nav-treeview">
                            <li class="nav-item">
                                <a href="../layout/unfixed-sidebar.html" class="nav-link">
                                    <i class="nav-icon bi bi-circle"></i>
                                    <p>Default Sidebar</p>
                                </a>
                            </li>
                            <li class="nav-item">
                                <a href="../layout/fixed-sidebar.html" class="nav-link">
                                    <i class="nav-icon bi bi-circle"></i>
                                    <p>Fixed Sidebar</p>
                                </a>
                            </li>
                            <li class="nav-item">
                                <a href="../layout/layout-custom-area.html" class="nav-link">
                                    <i class="nav-icon bi bi-circle"></i>
                                    <p>Layout <small>+ Custom Area </small></p>
                                </a>
                            </li>
                            <li class="nav-item">
                                <a href="../layout/sidebar-mini.html" class="nav-link">
                                    <i class="nav-icon bi bi-circle"></i>
                                    <p>Sidebar Mini</p>
                                </a>
                            </li>
                            <li class="nav-item">
                                <a href="../layout/collapsed-sidebar.html" class="nav-link">
                                    <i class="nav-icon bi bi-circle"></i>
                                    <p>Sidebar Mini <small>+ Collapsed</small></p>
                                </a>
                            </li>
                            <li class="nav-item">
                                <a href="../layout/logo-switch.html" class="nav-link">
                                    <i class="nav-icon bi bi-circle"></i>
                                    <p>Sidebar Mini <small>+ Logo Switch</small></p>
                                </a>
                            </li>
                            <li class="nav-item">
                                <a href="../layout/layout-rtl.html" class="nav-link">
                                    <i class="nav-icon bi bi-circle"></i>
                                    <p>Layout RTL</p>
                                </a>
                            </li>
                        </ul>
                    </li>
                    <li class="nav-item">
                        <a href="#" class="nav-link">
                            <i class="nav-icon bi bi-tree-fill"></i>
                            <p>
                                UI Elements
                                <i class="nav-arrow bi bi-chevron-right"></i>
                            </p>
                        </a>
                        <ul class="nav nav-treeview">
                            <li class="nav-item">
                                <a href="../UI/general.html" class="nav-link">
                                    <i class="nav-icon bi bi-circle"></i>
                                    <p>General</p>
                                </a>
                            </li>
                            <li class="nav-item">
                                <a href="../UI/icons.html" class="nav-link">
                                    <i class="nav-icon bi bi-circle"></i>
                                    <p>Icons</p>
                                </a>
                            </li>
                            <li class="nav-item">
                                <a href="../UI/timeline.html" class="nav-link">
                                    <i class="nav-icon bi bi-circle"></i>
                                    <p>Timeline</p>
                                </a>
                            </li>
                        </ul>
                    </li>
                    <li class="nav-item">
                        <a href="#" class="nav-link">
                            <i class="nav-icon bi bi-pencil-square"></i>
                            <p>
                                Forms
                                <i class="nav-arrow bi bi-chevron-right"></i>
                            </p>
                        </a>
                        <ul class="nav nav-treeview">
                            <li class="nav-item">
                                <a href="../forms/general.html" class="nav-link">
                                    <i class="nav-icon bi bi-circle"></i>
                                    <p>General Elements</p>
                                </a>
                            </li>
                        </ul>
                    </li>
                    <li class="nav-item menu-open">
                        <a href="#" class="nav-link active">
                            <i class="nav-icon bi bi-table"></i>
                            <p>
                                Tables
                                <i class="nav-arrow bi bi-chevron-right"></i>
                            </p>
                        </a>
                        <ul class="nav nav-treeview">
                            <li class="nav-item">
                                <a href="../tables/simple.html" class="nav-link active">
                                    <i class="nav-icon bi bi-circle"></i>
                                    <p>BackEnd - JAVA</p>
                                </a>
                            </li>
                        </ul>
                    </li>
                    <li class="nav-header">EXAMPLES</li>
                    <li class="nav-item">
                        <a href="#" class="nav-link">
                            <i class="nav-icon bi bi-box-arrow-in-right"></i>
                            <p>
                                Auth
                                <i class="nav-arrow bi bi-chevron-right"></i>
                            </p>
                        </a>
                        <ul class="nav nav-treeview">
                            <li class="nav-item">
                                <a href="#" class="nav-link">
                                    <i class="nav-icon bi bi-box-arrow-in-right"></i>
                                    <p>
                                        Version 1
                                        <i class="nav-arrow bi bi-chevron-right"></i>
                                    </p>
                                </a>
                                <ul class="nav nav-treeview">
                                    <li class="nav-item">
                                        <a href="../examples/login.html" class="nav-link">
                                            <i class="nav-icon bi bi-circle"></i>
                                            <p>Login</p>
                                        </a>
                                    </li>
                                    <li class="nav-item">
                                        <a href="../examples/register.html" class="nav-link">
                                            <i class="nav-icon bi bi-circle"></i>
                                            <p>Register</p>
                                        </a>
                                    </li>
                                </ul>
                            </li>
                            <li class="nav-item">
                                <a href="#" class="nav-link">
                                    <i class="nav-icon bi bi-box-arrow-in-right"></i>
                                    <p>
                                        Version 2
                                        <i class="nav-arrow bi bi-chevron-right"></i>
                                    </p>
                                </a>
                                <ul class="nav nav-treeview">
                                    <li class="nav-item">
                                        <a href="../examples/login-v2.html" class="nav-link">
                                            <i class="nav-icon bi bi-circle"></i>
                                            <p>Login</p>
                                        </a>
                                    </li>
                                    <li class="nav-item">
                                        <a href="../examples/register-v2.html" class="nav-link">
                                            <i class="nav-icon bi bi-circle"></i>
                                            <p>Register</p>
                                        </a>
                                    </li>
                                </ul>
                            </li>
                            <li class="nav-item">
                                <a href="../examples/lockscreen.html" class="nav-link">
                                    <i class="nav-icon bi bi-circle"></i>
                                    <p>Lockscreen</p>
                                </a>
                            </li>
                        </ul>
                    </li>
                    <li class="nav-header">DOCUMENTATIONS</li>
                    <li class="nav-item">
                        <a href="../docs/introduction.html" class="nav-link">
                            <i class="nav-icon bi bi-download"></i>
                            <p>Installation</p>
                        </a>
                    </li>
                    <li class="nav-item">
                        <a href="../docs/layout.html" class="nav-link">
                            <i class="nav-icon bi bi-grip-horizontal"></i>
                            <p>Layout</p>
                        </a>
                    </li>
                    <li class="nav-item">
                        <a href="../docs/color-mode.html" class="nav-link">
                            <i class="nav-icon bi bi-star-half"></i>
                            <p>Color Mode</p>
                        </a>
                    </li>
                    <li class="nav-item">
                        <a href="#" class="nav-link">
                            <i class="nav-icon bi bi-ui-checks-grid"></i>
                            <p>
                                Components
                                <i class="nav-arrow bi bi-chevron-right"></i>
                            </p>
                        </a>
                        <ul class="nav nav-treeview">
                            <li class="nav-item">
                                <a href="../docs/components/main-header.html" class="nav-link">
                                    <i class="nav-icon bi bi-circle"></i>
                                    <p>Main Header</p>
                                </a>
                            </li>
                            <li class="nav-item">
                                <a href="../docs/components/main-sidebar.html" class="nav-link">
                                    <i class="nav-icon bi bi-circle"></i>
                                    <p>Main Sidebar</p>
                                </a>
                            </li>
                        </ul>
                    </li>
                    <li class="nav-item">
                        <a href="#" class="nav-link">
                            <i class="nav-icon bi bi-filetype-js"></i>
                            <p>
                                Javascript
                                <i class="nav-arrow bi bi-chevron-right"></i>
                            </p>
                        </a>
                        <ul class="nav nav-treeview">
                            <li class="nav-item">
                                <a href="../docs/javascript/treeview.html" class="nav-link">
                                    <i class="nav-icon bi bi-circle"></i>
                                    <p>Treeview</p>
                                </a>
                            </li>
                        </ul>
                    </li>
                    <li class="nav-item">
                        <a href="../docs/browser-support.html" class="nav-link">
                            <i class="nav-icon bi bi-browser-edge"></i>
                            <p>Browser Support</p>
                        </a>
                    </li>
                    <li class="nav-item">
                        <a href="../docs/how-to-contribute.html" class="nav-link">
                            <i class="nav-icon bi bi-hand-thumbs-up-fill"></i>
                            <p>How To Contribute</p>
                        </a>
                    </li>
                    <li class="nav-item">
                        <a href="../docs/faq.html" class="nav-link">
                            <i class="nav-icon bi bi-question-circle-fill"></i>
                            <p>FAQ</p>
                        </a>
                    </li>
                    <li class="nav-item">
                        <a href="../docs/license.html" class="nav-link">
                            <i class="nav-icon bi bi-patch-check-fill"></i>
                            <p>License</p>
                        </a>
                    </li>
                    <li class="nav-header">MULTI LEVEL EXAMPLE</li>
                    <li class="nav-item">
                        <a href="#" class="nav-link">
                            <i class="nav-icon bi bi-circle-fill"></i>
                            <p>Level 1</p>
                        </a>
                    </li>
                    <li class="nav-item">
                        <a href="#" class="nav-link">
                            <i class="nav-icon bi bi-circle-fill"></i>
                            <p>
                                Level 1
                                <i class="nav-arrow bi bi-chevron-right"></i>
                            </p>
                        </a>
                        <ul class="nav nav-treeview">
                            <li class="nav-item">
                                <a href="#" class="nav-link">
                                    <i class="nav-icon bi bi-circle"></i>
                                    <p>Level 2</p>
                                </a>
                            </li>
                            <li class="nav-item">
                                <a href="#" class="nav-link">
                                    <i class="nav-icon bi bi-circle"></i>
                                    <p>
                                        Level 2
                                        <i class="nav-arrow bi bi-chevron-right"></i>
                                    </p>
                                </a>
                                <ul class="nav nav-treeview">
                                    <li class="nav-item">
                                        <a href="#" class="nav-link">
                                            <i class="nav-icon bi bi-record-circle-fill"></i>
                                            <p>Level 3</p>
                                        </a>
                                    </li>
                                    <li class="nav-item">
                                        <a href="#" class="nav-link">
                                            <i class="nav-icon bi bi-record-circle-fill"></i>
                                            <p>Level 3</p>
                                        </a>
                                    </li>
                                    <li class="nav-item">
                                        <a href="#" class="nav-link">
                                            <i class="nav-icon bi bi-record-circle-fill"></i>
                                            <p>Level 3</p>
                                        </a>
                                    </li>
                                </ul>
                            </li>
                            <li class="nav-item">
                                <a href="#" class="nav-link">
                                    <i class="nav-icon bi bi-circle"></i>
                                    <p>Level 2</p>
                                </a>
                            </li>
                        </ul>
                    </li>
                    <li class="nav-item">
                        <a href="#" class="nav-link">
                            <i class="nav-icon bi bi-circle-fill"></i>
                            <p>Level 1</p>
                        </a>
                    </li>
                    <li class="nav-header">LABELS</li>
                    <li class="nav-item">
                        <a href="#" class="nav-link">
                            <i class="nav-icon bi bi-circle text-danger"></i>
                            <p class="text">Important</p>
                        </a>
                    </li>
                    <li class="nav-item">
                        <a href="#" class="nav-link">
                            <i class="nav-icon bi bi-circle text-warning"></i>
                            <p>Warning</p>
                        </a>
                    </li>
                    <li class="nav-item">
                        <a href="#" class="nav-link">
                            <i class="nav-icon bi bi-circle text-info"></i>
                            <p>Informational</p>
                        </a>
                    </li>
                </ul>
                <!--end::Sidebar Menu-->
            </nav>
        </div>
        <!--end::Sidebar Wrapper-->
    </aside>
    <!--end::Sidebar-->
    <!--begin::App Main-->
    <main class="app-main">
        <!--begin::App Content-->
        <div class="app-content">
            <!--begin::Container-->
            <div class="container-fluid">
                <!--begin::Row-->
                <div class="row">
                    <div class="col">
                        <!-- 상단 영역 전체 -->
                        <div class="profile-header" style="position: relative; padding: 40px 20px 80px 20px; border-bottom: 1px solid #ccc; background-color: #fff;">

                            <!-- 왼쪽: 직무 타이틀 -->
                            <div style="position: absolute; left: 20px; top: 30px;">
                                <h2 style="margin: 0;">"Backend - Java"</h2>
                            </div>

                            <!-- 오른쪽: 진행률 -->
                            <div style="position: absolute; right: 20px; top: 30px; text-align: right;">
                                <label style="font-size: 14px;">전체 과정 중 %</label>
                                <div style="width: 250px; height: 20px; background: #eee; border: 1px solid #ccc; border-radius: 10px; overflow: hidden;">
                                    <div style="width: 65%; height: 100%; background: linear-gradient(to right, #4db8ff, #007bff);"></div>
                                </div>
                            </div>

                            <!-- 가운데: 동그란 프로필 이미지 -->
                            <div style="
                                position: absolute;
                                left: 50%;
                                transform: translateX(-50%);
                                top: 50px;
                                z-index: 10;
                                width: 160px;
                                height: 160px;
                                border-radius: 50%;
                                border: 5px solid #fff;
                                box-shadow: 0 4px 8px rgba(0,0,0,0.1);
                                overflow: hidden;
                                background-color: #f0f0f0;
                              ">
                                <!-- ⬇️ 여기에 이미지 넣기 -->
                                <img src="프로필이미지.png" alt="회원 이미지" style="width: 100%; height: 100%; object-fit: cover;" />
                            </div>
                        </div>

                        <div class="card mb-4">
                            <div class="card-body" style="display: flex; justify-content: space-between; align-items: flex-start; padding: 20px; position: relative">

                                <!-- 왼쪽 정보 -->
                                <div style="width: 75%;">
                                    <p>이름</p>
                                    <p>나이</p>
                                    <p>성별</p>
                                    <p>연락처</p>
                                    <p>아이디</p>
                                    <p>기타 링크</p>
                                    <p>회원 레벨</p>
                                    <p>최근 로그인 날짜</p>
                                </div>

                                <!-- 오른쪽 뱃지 카드 -->
                                <div class="card card-warning card-outline mypage-badge" style="width: 20%; height: 230px; position: absolute; left: 70%; margin-top : 2rem">
                                    <div class="card-header">
                                        <div class="card-title">Badge</div>
                                    </div>
                                    <div class="card-body">
                                        <span class="badge rounded-pill text-bg-primary">Primary</span>
                                        <span class="badge rounded-pill text-bg-secondary">Secondary</span>
                                        <span class="badge rounded-pill text-bg-success">Success</span>
                                        <span class="badge rounded-pill text-bg-danger">Danger</span>
                                    </div>
                                </div>

                                <button type="button" class="btn btn-primary btn-lg" style="position: absolute; top: 1rem; right: 1rem;">수정</button>
                            </div>

                        </div>
                        <!-- /.card -->





                        <!-- 가로 정렬을 위한 부모 div -->
                        <div style="display: flex; justify-content: space-between; align-items: flex-start; gap: 40px;">

                            <!-- 왼쪽 카드 -->
                            <div class="card mb-4" style="width: 60%; height: 300px">
                                <div class="card-body" style="display: flex; flex-direction: column; padding: 20px;">
                                    <!-- 여기에 망각 곡선 -->
                                    망각 곡선 복습 자리
                                </div>
                            </div>

                            <!-- 오른쪽 progress -->
                            <div class="col-md-4" style="width: 35%; margin: 20px 20px 0px 0px">
                                <p class="text-center"><strong>Goal Completion</strong></p>

                                <div class="progress-group">
                                    Add Products to Cart
                                    <span class="float-end"><b>160</b>/200</span>
                                    <div class="progress progress-sm">
                                        <div class="progress-bar text-bg-primary" style="width: 80%">
                                        </div>
                                    </div>
                                </div>

                                <div class="progress-group">
                                    Complete Purchase
                                    <span class="float-end"><b>310</b>/400</span>
                                    <div class="progress progress-sm">
                                        <div class="progress-bar text-bg-danger" style="width: 75%"></div>
                                    </div>
                                </div>

                                <div class="progress-group">
                                    <span class="progress-text">Visit Premium Page</span>
                                    <span class="float-end"><b>480</b>/800</span>
                                    <div class="progress progress-sm">
                                        <div class="progress-bar text-bg-success" style="width: 60%"></div>
                                    </div>
                                </div>

                                <div class="progress-group">
                                    Send Inquiries
                                    <span class="float-end"><b>250</b>/500</span>
                                    <div class="progress progress-sm">
                                        <div class="progress-bar text-bg-warning" style="width: 50%"></div>
                                    </div>
                                </div>
                            </div>

                        </div>


                        <div class="card mb-4" style="width: 100%; height: 300px">
                            <div class="card-body" style="display: flex; flex-direction: column; padding: 20px;">
                                <div id="cal-heatmap"> 잔디 왜 안들어가지 </div>

                            </div>
                        </div>

                        <div class="card mb-4" style="width: 100%; height: 300px">
                            <div class="card-body" style="display: flex; flex-direction: row; padding: 20px; gap: 20px;">
                                <!-- 성장 그래프 -->
                                <div class="card mb-4" style="width: 65%">
                                    <div class="card-header border-0">
                                        <div class="d-flex justify-content-between">
                                            <h3 class="card-title">Online Store Visitors</h3>
                                            <a
                                                    href="javascript:void(0);"
                                                    class="link-primary link-offset-2 link-underline-opacity-25 link-underline-opacity-100-hover"
                                            >View Report</a
                                            >
                                        </div>
                                    </div>
                                    <div class="card-body">
                                        <div class="d-flex">
                                            <p class="d-flex flex-column">
                                                <span class="fw-bold fs-5">820</span> <span>Visitors Over Time</span>
                                            </p>
                                            <p class="ms-auto d-flex flex-column text-end">
                                                <span class="text-success"> <i class="bi bi-arrow-up"></i> 12.5% </span>
                                                <span class="text-secondary">Since last week</span>
                                            </p>
                                        </div>
                                        <!-- /.d-flex -->
                                        <div class="position-relative mb-4"><div id="visitors-chart"></div></div>
                                        <div class="d-flex flex-row justify-content-end">
                      <span class="me-2">
                        <i class="bi bi-square-fill text-primary"></i> This Week
                      </span>
                                            <span> <i class="bi bi-square-fill text-secondary"></i> Last Week </span>
                                        </div>
                                    </div>
                                </div>
                                <!-- /.card -->
                                <div class="ranking-wrapper" style="width: 35%; margin : 10px">
                                <table class="table ranking">
                                    <thead>
                                    <tr>
                                        <th scope="col">랭킹</th>
                                        <th scope="col">이름</th>
                                        <th scope="col">점수</th>
                                        <th scope="col">증감</th>
                                    </tr>
                                    </thead>
                                    <tbody>
                                    <tr>
                                        <th scope="row">1</th>
                                        <td>식빵</td>
                                        <td>1306</td>
                                        <td>+3</td>
                                    </tr>
                                    <tr>
                                        <th scope="row">2</th>
                                        <td>감자</td>
                                        <td>1305</td>
                                        <td>-2</td>
                                    </tr>
                                    <tr>
                                        <th scope="row">3</th>
                                        <td>가지</td>
                                        <td>1301</td>
                                        <td>+1</td>
                                    </tr>
                                    </tbody>
                                </table>
                                </div>


                            </div>
                        </div>





                        <div class="card mb-4" style="width: 100%; height: 300px">
                            <div class="card-body" style="display: flex; flex-direction: column; padding: 20px;">
                                회사 추천

                            </div>
                        </div>


                    </div>
                </div>
                <!--end::Row-->
            </div>
            <!--end::Container-->
        </div>

                <!--end::Container-->
        <!--end::App Content-->
    </main>
    <!--end::App Main-->



    <!--begin::Footer-->
    <footer class="app-footer">
        <!--begin::To the end-->
        <div class="float-end d-none d-sm-inline">Anything you want</div>
        <!--end::To the end-->
        <!--begin::Copyright-->
        <strong>
            Copyright &copy; 2014-2024&nbsp;
            <a href="https://adminlte.io" class="text-decoration-none">AdminLTE.io</a>.
        </strong>
        All rights reserved.
        <!--end::Copyright-->
    </footer>
    <!--end::Footer-->
</div>
<!--end::App Wrapper-->
<!--begin::Script-->
<!--begin::Third Party Plugin(OverlayScrollbars)-->
<%@include file="/WEB-INF/views/inc/footer.jsp" %>
<!--end::OverlayScrollbars Configure-->
<!--end::Script-->
<script>
    document.addEventListener("DOMContentLoaded", function () {
        const cal = new CalHeatmap();

        cal.paint({
            itemSelector: "#cal-heatmap",
            domain: "month",
            subDomain: "day",
            range: 3,
            cellSize: 15,
            domainGutter: 10,
            data: {
                source: async () => {
                    const now = new Date();
                    const start = new Date(now.getFullYear(), now.getMonth() - 3, 1);
                    const data = {};

                    for (let d = new Date(start); d <= now; d.setDate(d.getDate() + 1)) {
                        data[Math.floor(d.getTime() / 1000)] = Math.floor(Math.random() * 5);
                    }

                    return data;
                }
            },
            legend: [1, 2, 3, 4]
        });
    });
</script>




</body>



<!--end::Body-->
</html>
