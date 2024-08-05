<div class="row mb-9 align-items-center">
    <div class="col-sm-6 mb-8 mb-sm-0">
        <h2 class="fs-4 mb-0">Dashboard</h2>
        <p class="mb-0">Whole data about your business here</p>
    </div>
    <div class="col-sm-6 d-flex flex-wrap justify-content-sm-end">
        <a href="#" class="btn btn-primary">
            <svg class="icon mt-n3">
                <use xlink:href="#file-plus"></use>
            </svg>
            <span class="d-inline-block ml-1">Create report</span>
        </a>
    </div>
</div>
<div class="row">
    <div class="col-sm-6 col-xxl-3 mb-7">
        <div class="card rounded-4">
            <div class="card-body p-7">
                <div class="d-flex">
                    <div class="me-6">
                        <span
                            class="square d-flex align-items-center justify-content-center fs-5 badge rounded-circle text-green bg-green-light"
                            style="--square-size: 48px">
                            <svg class="icon">
                                <use xlink:href="#circle-dollar"></use>
                            </svg>
                        </span>
                    </div>
                    <div class="media-body">
                        <h6 class="mb-4 card-title">Revenue</h6>
                        <span class="fs-4 d-block font-weight-500 text-primary lh-12">$13,456.5</span>
                        <span class="fs-14px">Shipping fees are not included.</span>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="col-sm-6 col-xxl-3 mb-7">
        <div class="card rounded-4">
            <div class="card-body p-7">
                <div class="d-flex">
                    <div class="me-6">
                        <span
                            class="square d-flex align-items-center justify-content-center fs-5 badge rounded-circle text-success bg-success-light"
                            style="--square-size: 48px">
                            <i class="fas fa-truck"></i>
                        </span>
                    </div>
                    <div class="media-body">
                        <h6 class="mb-4 card-title">Orders</h6>
                        <span class="fs-4 d-block font-weight-500 text-primary lh-12">53.668</span>
                        <span class="fs-14px">Excluding orders in transit</span>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="col-sm-6 col-xxl-3 mb-7">
        <div class="card rounded-4">
            <div class="card-body p-7">
                <div class="d-flex">
                    <div class="me-6">
                        <span
                            class="square d-flex align-items-center justify-content-center fs-5 badge rounded-circle text-warning bg-warning-light"
                            style="--square-size: 48px">
                            <i class="fas fa-qrcode"></i>
                        </span>
                    </div>
                    <div class="media-body">
                        <h6 class="mb-4 card-title">Products</h6>
                        <span class="fs-4 d-block font-weight-500 text-primary lh-12">9.856</span>
                        <span class="fs-14px">In 19 Categories</span>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="col-sm-6 col-xxl-3 mb-7">
        <div class="card rounded-4">
            <div class="card-body p-7">
                <div class="d-flex">
                    <div class="me-6">
                        <span
                            class="square d-flex align-items-center justify-content-center fs-5 badge rounded-circle text-info bg-info-light"
                            style="--square-size: 48px">
                            <i class="fas fa-shopping-bag"></i>
                        </span>
                    </div>
                    <div class="media-body">
                        <h6 class="mb-4 card-title">Monthly Earning</h6>
                        <span class="fs-4 d-block font-weight-500 text-primary lh-12">$6,982</span>
                        <span class="fs-14px">Based in your local time.</span>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<div class="row">
    <div class="col-xl-8">
        <div class="card rounded-4 p-7 mb-7">
            <h5 class="card-title fs-6 mb-6">Sale statistics</h5>
            <div class="card-body p-0">
                <canvas id="mychart" class="chartjs" data-chart-type="line"
                    data-chart-labels="[&quot;Jan&quot;,&quot;Feb&quot;,&quot;Mar&quot;,&quot;Apr&quot;,&quot;May&quot;,&quot;Jun&quot;,&quot;Jul&quot;,&quot;Aug&quot;,&quot;Sep&quot;,&quot;Oct&quot;,&quot;Nov&quot;,&quot;Dec&quot;]"
                    data-chart-options="{&quot;elements&quot;:{&quot;line&quot;:{&quot;tension&quot;:0.3}},&quot;plugins&quot;:{&quot;legend&quot;:{&quot;labels&quot;:{&quot;usePointStyle&quot;:true}}},&quot;scales&quot;:{&quot;y&quot;:{&quot;ticks&quot;:{&quot;display&quot;:true},&quot;grid&quot;:{&quot;display&quot;:true,&quot;drawBorder&quot;:false,&quot;drawTicks&quot;:true}},&quot;x&quot;:{&quot;ticks&quot;:{&quot;display&quot;:true},&quot;grid&quot;:{&quot;display&quot;:true,&quot;drawBorder&quot;:false,&quot;drawTicks&quot;:true}}}}"
                    data-chart-datasets="[{&quot;label&quot;:&quot;Sales&quot;,&quot;data&quot;:[18,17,4,3,2,20,25,31,25,22,20,9],&quot;backgroundColor&quot;:&quot;#2C78DC33&quot;,&quot;hoverBackgroundColor&quot;:&quot;#2C78DC33&quot;,&quot;borderColor&quot;:&quot;#2C78DC&quot;,&quot;hoverBorderColor&quot;:&quot;#2C78DC&quot;,&quot;borderWidth&quot;:1,&quot;fill&quot;:true},{&quot;label&quot;:&quot;Visitors&quot;,&quot;data&quot;:[40,20,17,9,23,35,39,30,34,25,27,17],&quot;backgroundColor&quot;:&quot;#04D18233&quot;,&quot;hoverBackgroundColor&quot;:&quot;#04D18233&quot;,&quot;borderColor&quot;:&quot;#04D182&quot;,&quot;hoverBorderColor&quot;:&quot;#04D182&quot;,&quot;borderWidth&quot;:1,&quot;fill&quot;:true},{&quot;label&quot;:&quot;Products&quot;,&quot;data&quot;:[30,10,27,19,33,15,19,20,24,15,37,6],&quot;backgroundColor&quot;:&quot;#EF287830&quot;,&quot;hoverBackgroundColor&quot;:&quot;#EF287830&quot;,&quot;borderColor&quot;:&quot;#EF287391&quot;,&quot;hoverBorderColor&quot;:&quot;#EF287391&quot;,&quot;borderWidth&quot;:1,&quot;fill&quot;:true}]"
                    data-chart-additional-options="{&quot;chatId&quot;:&quot;mychart&quot;}" height="265"></canvas>
            </div>
        </div>
        <div class="row">
            <div class="col-lg-5">
                <div class="card mb-4 rounded-4">
                    <div class="card-body">
                        <h5 class="card-title fs-6 mb-6">New Members</h5>
                        <div class="new-member-list">
                            <div class="d-flex align-items-center justify-content-between mb-9">
                                <div class="d-flex align-items-center justify-content-between">
                                    <div class="w-40px me-5">
                                        <img src="#" data-src="../assets//images/dashboard/avatar-4.png" alt
                                            class="lazy-image rounded-circle" height="40" width="40">
                                    </div>
                                    <div>
                                        <h6 class="fs-14px mb-0 lh-1">Patric Adams</h6>
                                        <p class="text-muted fs-12px mb-0">Sanfrancisco</p>
                                    </div>
                                </div>
                                <a href="#" class="btn btn-xs btn-primary"><i class="fas fa-plus"></i> Add</a>
                            </div>
                            <div class="d-flex align-items-center justify-content-between mb-9">
                                <div class="d-flex align-items-center justify-content-between">
                                    <div class="w-40px me-5">
                                        <img src="#" data-src="../assets//images/dashboard/avatar-2.png" alt
                                            class="lazy-image rounded-circle" height="40" width="40">
                                    </div>
                                    <div>
                                        <h6 class="fs-14px mb-0 lh-1">Patric Adams</h6>
                                        <p class="text-muted fs-12px mb-0">Sanfrancisco</p>
                                    </div>
                                </div>
                                <a href="#" class="btn btn-xs btn-primary"><i class="fas fa-plus"></i> Add</a>
                            </div>
                            <div class="d-flex align-items-center justify-content-between mb-9">
                                <div class="d-flex align-items-center justify-content-between">
                                    <div class="w-40px me-5">
                                        <img src="#" data-src="../assets//images/dashboard/avatar-3.png" alt
                                            class="lazy-image rounded-circle" height="40" width="40">
                                    </div>
                                    <div>
                                        <h6 class="fs-14px mb-0 lh-1">Patric Adams</h6>
                                        <p class="text-muted fs-12px mb-0">Sanfrancisco</p>
                                    </div>
                                </div>
                                <a href="#" class="btn btn-xs btn-primary"><i class="fas fa-plus"></i> Add</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-7">
                <div class="card mb-7 rounded-4 p-7">
                    <div class="card-body p-0">
                        <h5 class="card-title fs-6 mb-6">Recent activities</h5>
                        <ul class="verti-timeline list-unstyled fs-13px mx-4">
                            <li class="event-list d-flex align-items-center position-relative">
                                <div class="event-timeline-dot">
                                    <svg class="icon">
                                        <use xlink:href="#circle-play"></use>
                                    </svg>
                                </div>
                                <div class="d-flex flex-row align-items-center">
                                    <div class="me-6">
                                        <h6 class="fs-13px mb-0"><span class="d-inline-block me-6 w-50px">Today</span>
                                            <svg class="icon text-body-emphasis">
                                                <use xlink:href="#arrow-right-long"></use>
                                            </svg>
                                        </h6>
                                    </div>
                                    <p class="mb-0 fs-13px">Lorem ipsum dolor sit amet
                                        consectetur</p>
                                </div>
                            </li>
                            <li class="event-list d-flex align-items-center position-relative active">
                                <div class="event-timeline-dot">
                                    <svg class="icon">
                                        <use xlink:href="#circle-play"></use>
                                    </svg>
                                </div>
                                <div class="d-flex flex-row align-items-center">
                                    <div class="me-6">
                                        <h6 class="fs-13px mb-0"><span class="d-inline-block me-6 w-50px">17 May</span>
                                            <svg class="icon text-body-emphasis">
                                                <use xlink:href="#arrow-right-long"></use>
                                            </svg>
                                        </h6>
                                    </div>
                                    <p class="mb-0 fs-13px">Debitis nesciunt voluptatum dicta
                                        reprehenderit</p>
                                </div>
                            </li>
                            <li class="event-list d-flex align-items-center position-relative">
                                <div class="event-timeline-dot">
                                    <svg class="icon">
                                        <use xlink:href="#circle-play"></use>
                                    </svg>
                                </div>
                                <div class="d-flex flex-row align-items-center">
                                    <div class="me-6">
                                        <h6 class="fs-13px mb-0"><span class="d-inline-block me-6 w-50px">13 May</span>
                                            <svg class="icon text-body-emphasis">
                                                <use xlink:href="#arrow-right-long"></use>
                                            </svg>
                                        </h6>
                                    </div>
                                    <p class="mb-0 fs-13px">Accusamus voluptatibus voluptas.</p>
                                </div>
                            </li>
                            <li class="event-list d-flex align-items-center position-relative">
                                <div class="event-timeline-dot">
                                    <svg class="icon">
                                        <use xlink:href="#circle-play"></use>
                                    </svg>
                                </div>
                                <div class="d-flex flex-row align-items-center">
                                    <div class="me-6">
                                        <h6 class="fs-13px mb-0"><span class="d-inline-block me-6 w-50px">05
                                                April</span>
                                            <svg class="icon text-body-emphasis">
                                                <use xlink:href="#arrow-right-long"></use>
                                            </svg>
                                        </h6>
                                    </div>
                                    <p class="mb-0 fs-13px">At vero eos et accusamus et iusto
                                        odio dignissi</p>
                                </div>
                            </li>
                            <li class="event-list d-flex align-items-center position-relative">
                                <div class="event-timeline-dot">
                                    <svg class="icon">
                                        <use xlink:href="#circle-play"></use>
                                    </svg>
                                </div>
                                <div class="d-flex flex-row align-items-center">
                                    <div class="me-6">
                                        <h6 class="fs-13px mb-0"><span class="d-inline-block me-6 w-50px">26 Mar</span>
                                            <svg class="icon text-body-emphasis">
                                                <use xlink:href="#arrow-right-long"></use>
                                            </svg>
                                        </h6>
                                    </div>
                                    <p class="mb-0 fs-13px">Responded to need “Volunteer
                                        Activities</p>
                                </div>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="col-xl-4">
        <div class="card rounded-4 p-7 mb-7">
            <h5 class="card-title fs-6 mb-6">Revenue Base on Area</h5>
            <div class="card-body p-0">
                <canvas id="mychart01" class="chartjs" data-chart-type="bar"
                    data-chart-labels="[&quot;900&quot;,&quot;1200&quot;,&quot;1400&quot;,&quot;1600&quot;]"
                    data-chart-options="{&quot;plugins&quot;:{&quot;legend&quot;:{&quot;labels&quot;:{&quot;usePointStyle&quot;:true}}},&quot;scales&quot;:{&quot;y&quot;:{&quot;ticks&quot;:{&quot;display&quot;:true},&quot;grid&quot;:{&quot;display&quot;:true,&quot;drawBorder&quot;:false,&quot;drawTicks&quot;:true}},&quot;x&quot;:{&quot;ticks&quot;:{&quot;display&quot;:true},&quot;grid&quot;:{&quot;display&quot;:true,&quot;drawBorder&quot;:false,&quot;drawTicks&quot;:true}}}}"
                    data-chart-datasets="[{&quot;label&quot;:&quot;US&quot;,&quot;data&quot;:[233,321,783,900],&quot;backgroundColor&quot;:&quot;#5897FB&quot;,&quot;hoverBackgroundColor&quot;:&quot;#5897FB&quot;,&quot;borderColor&quot;:&quot;#5897FB&quot;,&quot;hoverBorderColor&quot;:&quot;#5897FB&quot;,&quot;borderWidth&quot;:1,&quot;fill&quot;:true},{&quot;label&quot;:&quot;Europe&quot;,&quot;data&quot;:[408,547,675,734],&quot;backgroundColor&quot;:&quot;#7BCF86&quot;,&quot;hoverBackgroundColor&quot;:&quot;#7BCF86&quot;,&quot;borderColor&quot;:&quot;#7BCF86&quot;,&quot;hoverBorderColor&quot;:&quot;#7BCF86&quot;,&quot;borderWidth&quot;:1,&quot;fill&quot;:true},{&quot;label&quot;:&quot;Asian&quot;,&quot;data&quot;:[208,447,575,634],&quot;backgroundColor&quot;:&quot;#FF9076&quot;,&quot;hoverBackgroundColor&quot;:&quot;#FF9076&quot;,&quot;borderColor&quot;:&quot;#FF9076&quot;,&quot;hoverBorderColor&quot;:&quot;#FF9076&quot;,&quot;borderWidth&quot;:1,&quot;fill&quot;:true},{&quot;label&quot;:&quot;Africa&quot;,&quot;data&quot;:[123,345,122,302],&quot;backgroundColor&quot;:&quot;#D595E5&quot;,&quot;hoverBackgroundColor&quot;:&quot;#D595E5&quot;,&quot;borderColor&quot;:&quot;#D595E5&quot;,&quot;hoverBorderColor&quot;:&quot;#D595E5&quot;,&quot;borderWidth&quot;:&quot;1&quot;,&quot;fill&quot;:true}]"
                    data-chart-additional-options="{&quot;chatId&quot;:&quot;mychart01&quot;}" height="222"></canvas>
            </div>
        </div>
        <div class="card mb-7 p-7 rounded-4">
            <div class="card-body p-0">
                <h5 class="card-title fs-6 mb-4">Marketing Chanel</h5>
                <span class="text-muted fs-12px">Facebook</span>
                <div class="progress mb-4">
                    <div class="progress-bar bg-primary" role="progressbar" style="width: 15%">
                        15%
                    </div>
                </div>
                <span class="text-muted fs-12px">Instagram</span>
                <div class="progress mb-4">
                    <div class="progress-bar bg-primary" role="progressbar" style="width: 65%">
                        65%
                    </div>
                </div>
                <span class="text-muted fs-12px">Google</span>
                <div class="progress mb-4">
                    <div class="progress-bar bg-primary" role="progressbar" style="width: 51%">
                        51%
                    </div>
                </div>
                <span class="text-muted fs-12px">Twitter</span>
                <div class="progress mb-4">
                    <div class="progress-bar bg-primary" role="progressbar" style="width: 80%">
                        80%
                    </div>
                </div>
                <span class="text-muted fs-12px">Other</span>
                <div class="progress mb-4">
                    <div class="progress-bar bg-primary" role="progressbar" style="width: 80%">
                        80%
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<div class="card mb-4 rounded-4 p-7">
    <div class="card-header bg-transparent px-0 pt-0 pb-7">
        <h4 class="card-title fs-18px mb-6">Latest orders</h4>
        <div class="row align-items-center">
            <div class="col-md-3 col-12 me-auto mb-md-0 mb-6">
                <select class="form-select">
                    <option selected data-select2-id="3">All Categories</option>
                    <option>Women's Clothing</option>
                    <option>Men's Clothing</option>
                    <option>Cellphones</option>
                    <option>Computer &amp; Office</option>
                    <option>Consumer Electronics</option>
                    <option>Jewelry &amp; Accessories</option>
                    <option>Home &amp; Garden</option>
                    <option>Luggage &amp; Bags</option>
                    <option>Shoes</option>
                    <option>Mother &amp; Kids</option>
                </select>
            </div>
            <div class="col-md-2 col-6">
                <input type="date" class="form-control bg-input border-0">
            </div>
            <div class="col-md-2 col-6">
                <select class="form-select">
                    <option>Status</option>
                    <option>All</option>
                    <option>Paid</option>
                    <option>Chargeback</option>
                    <option>Refund</option>
                </select>
            </div>
        </div>
    </div>
    <div class="card-body px-0 pt-7 pb-0">
        <div class="table-responsive">
            <table class="table table-hover align-middle table-nowrap mb-0 table-borderless">
                <thead class="table-light">
                    <tr>
                        <th scope="col" class="text-center">
                            <div class="form-check align-middle">
                                <input class="form-check-input rounded-0 ms-0" type="checkbox" id="transactionCheck01">
                                <label class="form-check-label" for="transactionCheck01"></label>
                            </div>
                        </th>
                        <th class="align-middle" scope="col">Order ID
                        </th>
                        <th class="align-middle" scope="col">Billing Name
                        </th>
                        <th class="align-middle" scope="col">Date
                        </th>
                        <th class="align-middle" scope="col">Total
                        </th>
                        <th class="align-middle" scope="col">Payment Status
                        </th>
                        <th class="align-middle" scope="col">Payment Method
                        </th>
                        <th class="align-middle text-center" scope="col">View Details
                        </th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td class="text-center">
                            <div class="form-check">
                                <input class="form-check-input rounded-0 ms-0" type="checkbox" id="transactionCheck-0">
                                <label class="form-check-label" for="transactionCheck-0"></label>
                            </div>
                        </td>
                        <td><a href="#">#SK2540</a></td>
                        <td class="text-body-emphasis">Neal Matthews</td>
                        <td>07 Oct, 2021</td>
                        <td>$400</td>
                        <td>
                            <span class="badge rounded-lg badge-soft-success border-0 text-capitalize fs-12">paid</span>
                        </td>
                        <td>
                            <svg class="icon me-4">
                                <use xlink:href="#credit-card"></use>
                            </svg>
                            Mastercard
                        </td>
                        <td class="text-center">
                            <a href="order-detail.html" class="btn btn-primary fs-13px btn-xs py-4"> View details</a>
                        </td>
                    </tr>
                    <tr>
                        <td class="text-center">
                            <div class="form-check">
                                <input class="form-check-input rounded-0 ms-0" type="checkbox" id="transactionCheck-1">
                                <label class="form-check-label" for="transactionCheck-1"></label>
                            </div>
                        </td>
                        <td><a href="#">#SK2541</a></td>
                        <td class="text-body-emphasis">Jamal Burnett</td>
                        <td>07 Oct, 2021</td>
                        <td>$380</td>
                        <td>
                            <span
                                class="badge rounded-lg badge-soft-danger border-0 text-capitalize fs-12">Chargeback</span>
                        </td>
                        <td>
                            <svg class="icon me-4">
                                <use xlink:href="#credit-card"></use>
                            </svg>
                            Visa
                        </td>
                        <td class="text-center">
                            <a href="order-detail.html" class="btn btn-primary fs-13px btn-xs py-4"> View details</a>
                        </td>
                    </tr>
                    <tr>
                        <td class="text-center">
                            <div class="form-check">
                                <input class="form-check-input rounded-0 ms-0" type="checkbox" id="transactionCheck-2">
                                <label class="form-check-label" for="transactionCheck-2"></label>
                            </div>
                        </td>
                        <td><a href="#">#SK2542</a></td>
                        <td class="text-body-emphasis">Juan Mitchell</td>
                        <td>06 Oct, 2021</td>
                        <td>$384</td>
                        <td>
                            <span class="badge rounded-lg badge-soft-success border-0 text-capitalize fs-12">Paid</span>
                        </td>
                        <td>
                            <svg class="icon me-4">
                                <use xlink:href="#credit-card"></use>
                            </svg>
                            Paypal
                        </td>
                        <td class="text-center">
                            <a href="order-detail.html" class="btn btn-primary fs-13px btn-xs py-4"> View details</a>
                        </td>
                    </tr>
                    <tr>
                        <td class="text-center">
                            <div class="form-check">
                                <input class="form-check-input rounded-0 ms-0" type="checkbox" id="transactionCheck-3">
                                <label class="form-check-label" for="transactionCheck-3"></label>
                            </div>
                        </td>
                        <td><a href="#">#SK2543</a></td>
                        <td class="text-body-emphasis">Barry Dick</td>
                        <td>05 Oct, 2021</td>
                        <td>$412</td>
                        <td>
                            <span class="badge rounded-lg badge-soft-success border-0 text-capitalize fs-12">Paid</span>
                        </td>
                        <td>
                            <svg class="icon me-4">
                                <use xlink:href="#credit-card"></use>
                            </svg>
                            Mastercard
                        </td>
                        <td class="text-center">
                            <a href="order-detail.html" class="btn btn-primary fs-13px btn-xs py-4"> View details</a>
                        </td>
                    </tr>
                    <tr>
                        <td class="text-center">
                            <div class="form-check">
                                <input class="form-check-input rounded-0 ms-0" type="checkbox" id="transactionCheck-4">
                                <label class="form-check-label" for="transactionCheck-4"></label>
                            </div>
                        </td>
                        <td><a href="#">#SK2544</a></td>
                        <td class="text-body-emphasis">Ronald Taylor</td>
                        <td>04 Oct, 2021</td>
                        <td>$404</td>
                        <td>
                            <span
                                class="badge rounded-lg badge-soft-warning border-0 text-capitalize fs-12">Refund</span>
                        </td>
                        <td>
                            <svg class="icon me-4">
                                <use xlink:href="#credit-card"></use>
                            </svg>
                            Visa
                        </td>
                        <td class="text-center">
                            <a href="order-detail.html" class="btn btn-primary fs-13px btn-xs py-4"> View details</a>
                        </td>
                    </tr>
                    <tr>
                        <td class="text-center">
                            <div class="form-check">
                                <input class="form-check-input rounded-0 ms-0" type="checkbox" id="transactionCheck-5">
                                <label class="form-check-label" for="transactionCheck-5"></label>
                            </div>
                        </td>
                        <td><a href="#">#SK2545</a></td>
                        <td class="text-body-emphasis">Jacob Hunter</td>
                        <td>04 Oct, 2021</td>
                        <td>$392</td>
                        <td>
                            <span class="badge rounded-lg badge-soft-success border-0 text-capitalize fs-12">Paid</span>
                        </td>
                        <td>
                            <svg class="icon me-4">
                                <use xlink:href="#credit-card"></use>
                            </svg>
                            Paypal
                        </td>
                        <td class="text-center">
                            <a href="order-detail.html" class="btn btn-primary fs-13px btn-xs py-4"> View details</a>
                        </td>
                    </tr>
                </tbody>
            </table>
        </div>
    </div>
</div>
<nav aria-label="Page navigation example" class="mt-6 mb-4">
    <ul class="pagination justify-content-start">
        <li class="page-item active mx-3"><a class="page-link" href="#">01</a></li>
        <li class="page-item mx-3"><a class="page-link" href="#">02</a></li>
        <li class="page-item mx-3"><a class="page-link" href="#">03</a></li>
        <li class="page-item mx-3"><a class="page-link dot" href="#">...</a></li>
        <li class="page-item mx-3"><a class="page-link" href="#">16</a></li>
        <li class="page-item mx-3">
            <a class="page-link" href="#"><i class="far fa-chevron-right"></i></a>
        </li>
    </ul>
</nav>
</div>