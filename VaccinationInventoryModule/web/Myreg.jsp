

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Registration Page</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
       
    </head>
    <body>
        
        <section class="section register min-vh-100 d-flex flex-column align-items-center justify-content-center py-4">
        <div  class="container">
          <div class="row justify-content-center">
            <div class="col-lg-4 col-md-6 d-flex flex-column align-items-center justify-content-center">

              <div class="d-flex justify-content-center py-4">
                
                  <img src="assets/img/logo.png" alt="">
                  <span class="d-none d-lg-block">Registration Form</span>
                </a>
              </div><!-- End Logo -->

              <div class="card mb-3">

                <div class="card-body">

                  <div class="pt-4 pb-2">
                    <h5 class="card-title text-center pb-0 fs-4">Register Vaccine</h5>
                    <p class="text-center small">Enter vaccine name and number</p>
                  </div>

                  <form class="row g-3 needs-validation" novalidate action="VaccineServ" method="POST">

                    <div class="col-12">
                      <label for="vaccine" class="form-label">Vaccine Name</label>
                      <div class="input-group has-validation">
                        
                        <input type="text" name="vaccine" class="form-control" id="vaccine" required>
                        <div class="invalid-feedback">Please enter vaccine name.</div>
                      </div>
                    </div>

                    <div class="col-12">
                      <label for="number" class="form-label">Vaccine Number</label>
                      <input type="text" name="number" class="form-control" id="number" required>
                      <div class="invalid-feedback">Please enter vaccine number!</div>
                    </div>

                    
                    <div class="col-12">
                      <button class="btn btn-primary w-100" type="submit" name="sub">Submit</button>
                    </div>
                    
                  </form>

                </div>
              </div>


            </div>
          </div>
       

      </section>
      </div>  
    </body>
</html>
