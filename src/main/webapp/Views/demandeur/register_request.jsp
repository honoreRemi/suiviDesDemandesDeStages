<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%
    // R�cup�rer la session HTTP existante
    HttpSession userSession = request.getSession(true);

    // Ajouter du contenu � la session
    userSession.setAttribute("key", "valeur");
%>
<!doctype html>
<html lang="en" data-bs-theme="auto">

<head>

    <meta charset="ISO-8859-1">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="MASSACK HONORE REMI">
    <meta name="author" content="MASSACK HONORE REMI">
    <meta name="generator" content="Hugo 0.115.4">
    <title>envoyer ma demande</title>

    <link rel="canonical" href="https://getbootstrap.com/docs/5.3/examples/checkout/">
    <link rel="stylesheet" href="../../public/asset/app.css">


    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/@docsearch/css@3">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">

    <meta name="theme-color" content="#712cf9">


    <style>
        .bd-placeholder-img {
            font-size: 1.125rem;
            text-anchor: middle;
            -webkit-user-select: none;
            -moz-user-select: none;
            user-select: none;
        }

        @media (min-width: 768px) {
            .bd-placeholder-img-lg {
                font-size: 3.5rem;
            }
        }

        .b-example-divider {
            width: 100%;
            height: 3rem;
            background-color: rgba(0, 0, 0, .1);
            border: solid rgba(0, 0, 0, .15);
            border-width: 1px 0;
            box-shadow: inset 0 .5em 1.5em rgba(0, 0, 0, .1), inset 0 .125em .5em rgba(0, 0, 0, .15);
        }

        .b-example-vr {
            flex-shrink: 0;
            width: 1.5rem;
            height: 100vh;
        }

        .bi {
            vertical-align: -.125em;
            fill: currentColor;
        }

        .nav-scroller {
            position: relative;
            z-index: 2;
            height: 2.75rem;
            overflow-y: hidden;
        }

        .nav-scroller .nav {
            display: flex;
            flex-wrap: nowrap;
            padding-bottom: 1rem;
            margin-top: -1px;
            overflow-x: auto;
            text-align: center;
            white-space: nowrap;
            -webkit-overflow-scrolling: touch;
        }

        .btn-bd-primary {
            --bd-violet-bg: #712cf9;
            --bd-violet-rgb: 112.520718, 44.062154, 249.437846;

            --bs-btn-font-weight: 600;
            --bs-btn-color: var(--bs-white);
            --bs-btn-bg: var(--bd-violet-bg);
            --bs-btn-border-color: var(--bd-violet-bg);
            --bs-btn-hover-color: var(--bs-white);
            --bs-btn-hover-bg: #6528e0;
            --bs-btn-hover-border-color: #6528e0;
            --bs-btn-focus-shadow-rgb: var(--bd-violet-rgb);
            --bs-btn-active-color: var(--bs-btn-hover-color);
            --bs-btn-active-bg: #5a23c8;
            --bs-btn-active-border-color: #5a23c8;
        }

        .bd-mode-toggle {
            z-index: 1500;
        }
    </style>

</head>

<body class="bg-body-tertiary">


    <div class="container">
       	<%
			if (session.getAttribute("message") != null) {
		%>
			<div class="alert alert-danger text-center text-muted" role="alert">
				<%= session.getAttribute("message") %>
			</div>
			<%
		  }
		%>
        <main>
            <div class="py-5 text-center">
                <img class="d-block mx-auto mb-4" src="../../public/images/CNPSlogo.jpeg" alt="" width="200" height="57">
                <h2>Checkout form</h2>
                <p class="lead">renseignez toutes vos informations correctes dans les champs qui vous sont soumis pour nous faciliter la tache à mieux traiter et suivre vos differentes demandes.</p>
            </div>

            <div class="row g-5 justify-content-center">
                <div class="col-md-7 col-lg-8">
                    <h4 class="mb-3">submit my information</h4>
                    <form class="needs-validation" method="post" action="controller.demandeur_controller.Register">
                        <div class="row g-3">
                            <div class="col-sm-6">
                                <label for="firstName" class="form-label">nom</label>
                                <input type="text" class="form-control" id="nom" name="nom" placeholder="enter your name" value="" required>
                                <div class="invalid-feedback">
                                    Valid first name is required.
                                </div>
                            </div>

                            <div class="col-sm-6">
                                <label for="lastName" class="form-label">prenom</label>
                                <input type="text" class="form-control" id="prenom" name="prenom" placeholder="enter your surname" value="" required>
                                <div class="invalid-feedback">
                                    Valid last name is required.
                                </div>
                            </div>

                            <div class="col-12">
                                <label for="username" class="form-label">votre �tablissement</label>
                                <div class="input-group has-validation">
                                    <input type="text" class="form-control" id="�tablissement" name="�tablissement" placeholder="votre etablissemnet " required>
                                    <div class="invalid-feedback">
                                        Your school name is required.
                                    </div>
                                </div>
                            </div>

                            <div class="col-6">
                                <label for="username" class="form-label">votre filiere</label>
                                <div class="input-group has-validation">
                                    <input type="text" class="form-control" id="fili�re" name="fili�re" placeholder="votre fili�re" required>
                                    <div class="invalid-feedback">
                                        Your spinneret is required.
                                    </div>
                                </div>
                            </div>

                            <div class="col-6">
                                <label for="role" class="form-label">type de stage voulu</label>
                                <div class="w-100 mb-3">
                                    <select class="form-select" name="typeStage" id="typeStage">
                                        <option value="Academique">Academique</option>
                                        <option value="Professionel">Professionel</option>
                                    </select>
                                    <div class="invalid-feedback">
                                        Veuillez s�lectionner un role.
                                    </div>
                                </div>
                            </div>

                            <div class="col-12">
                                <label for="email" class="form-label">Email <span class="text-body-secondary">(Optional)</span></label>
                                <input type="email" class="form-control" id="email" name="email" placeholder="you@example.com">
                                <div class="invalid-feedback">
                                    Please enter a valid email address for shipping updates.
                                </div>
                            </div>

                            <div class="col-6">
                                <label for="username" class="form-label">votre numero de telephone</label>
                                <div class="input-group has-validation">
                                    <input type="tel" class="form-control" id="phone" name="phone" placeholder="votre numero de telephone " required>
                                    <div class="invalid-feedback">
                                        Your phone number is required.
                                    </div>
                                </div>
                            </div>

                            <div class="col-6">
                                <label for="username" class="form-label">entrez la periode de votre stage(date debut)</label>
                                <div class="input-group has-validation">
                                    <input type="date" class="form-control" id="dateDebut" name="dateDebut" placeholder="entrez la periode de votre stage" required>
                                    <div class="invalid-feedback">
                                        Your internship period start is required.
                                    </div>
                                </div>
                            </div>

                            <div class="col-12">
                                <label for="username" class="form-label">entrez la periode de votre stage(date fin)</label>
                                <div class="input-group has-validation">
                                    <input type="date" class="form-control" id="dateFin" name="dateFin" placeholder="entrez la periode de votre stage" required>
                                    <div class="invalid-feedback">
                                        Your end internship period is required.
                                    </div>
                                </div>
                            </div>

                            <div class="col-12">
                                <label for="username" class="form-label">entrez la dur�e de votre stage</label>
                                <div class="input-group has-validation">
                                    <input type="text" class="form-control" id="dur�e" name="dur�e" placeholder="entrez la dur�e de votre stage" required>
                                    <div class="invalid-feedback">
                                        Your duration is required.
                                    </div>
                                </div>
                            </div>

	                      <div class="col-6">
						    <label for="username" class="form-label">Entrez votre mot de passe</label>
						    <div class="input-group has-validation">
						        <input type="password" class="form-control" id="password" name="password" placeholder="Entrez votre mot de passe" required>
						        <c:if test="${not empty param.error}">
						            <div class="invalid-feedback">
						                Votre mot de passe est requis.
						            </div>
						        </c:if>
							   </div>
							</div>

                            <div class="col-6">
                                <label for="username" class="form-label">confirmez votre mot de passe</label>
                                <div class="input-group has-validation">
                                    <input type="password" class="form-control" id="conf_password" name="conf_password" placeholder="confirmez votre mot de passe" required>
                                    <div class="invalid-feedback">
                                        Your password repeet is required.
                                    </div>
                                </div>
                            </div>

                        </div>
                        <button class="w-100 mt-3 btn btn-primary btn-lg" name="create_request" type="submit">Me faire enregistrer</button>
                </div>
					<p class="text-center text-muted mt-5">Not requester account ? <a href="../../index.jsp">Login here</a></p>
                </form>
            </div>
    </div>
    </main>

    <footer class="my-5 pt-5 text-body-secondary text-center text-small">
        <p class="mb-1">&copy; 2022 a ��2023 Honore REMI MASSACK</p>

    </footer>
    </div>
    
 <script>
  // S�lectionner l'�l�ment de l'input
  const nomInput = document.getElementById('nom');
  const prenomInput = document.getElementById('prenom');
  const �tablissementInput = document.getElementById('�tablissement');
  const fili�reInput = document.getElementById('fili�re');
  const typeStageInput = document.getElementById('typeStage');
  const emailInput = document.getElementById('email');
  const phoneInput = document.getElementById('phone');
  const dateDebutInput = document.getElementById('dateDebut');
  const dateFinInput = document.getElementById('dateFin');
  const dur�eInput = document.getElementById('dur�e');
  const passwordInput = document.getElementById('password');
  const conf_passwordInput = document.getElementById('conf_password');

  
    // �couter l'�v�nement de changement de valeur
    nomInput.addEventListener('input', function() {
    const value = nomInput.value.trim(); // R�cup�rer la valeur et supprimer les espaces en d�but et fin

    // D�finir l'expression r�guli�re pour la validation
    const regex = /^[A-Za-z][A-Za-z0-9\s\p{P}]*$/;

    // V�rifier si la valeur de l'input est valide en utilisant l'expression r�guli�re
    if (regex.test(value)) {
      nomInput.classList.add('is-valid');
      nomInput.classList.remove('is-invalid');
    } else {
      nomInput.classList.add('is-invalid');
      nomInput.classList.remove('is-valid');
    }
  });

  
    // �couter l'�v�nement de changement de valeur
    prenomInput.addEventListener('input', function() {
    const value = prenomInput.value.trim(); // R�cup�rer la valeur et supprimer les espaces en d�but et fin

    // D�finir l'expression r�guli�re pour la validation
    const regex = /^[A-Za-z][A-Za-z0-9\s\p{P}]*$/;

    // V�rifier si la valeur de l'input est valide en utilisant l'expression r�guli�re
    if (regex.test(value)) {
      prenomInput.classList.add('is-valid');
      prenomInput.classList.remove('is-invalid');
    } else {
      prenomInput.classList.add('is-invalid');
      prenomInput.classList.remove('is-valid');
    }
  });

  
    // �couter l'�v�nement de changement de valeur
    �tablissementInput.addEventListener('input', function() {
    const value = �tablissementInput.value.trim(); // R�cup�rer la valeur et supprimer les espaces en d�but et fin

    // D�finir l'expression r�guli�re pour la validation
    const regex = /^[A-Za-z][A-Za-z0-9\s\p{P}]*$/;

    // V�rifier si la valeur de l'input est valide en utilisant l'expression r�guli�re
    if (regex.test(value)) {
    	�tablissementInput.classList.add('is-valid');
    	�tablissementInput.classList.remove('is-invalid');
    } else {
    	�tablissementInput.classList.add('is-invalid');
      �tablissementInput.classList.remove('is-valid');
    }
  });

  
    // �couter l'�v�nement de changement de valeur
    fili�reInput.addEventListener('input', function() {
    const value = fili�reInput.value.trim(); // R�cup�rer la valeur et supprimer les espaces en d�but et fin

    // D�finir l'expression r�guli�re pour la validation
    const regex = /^[A-Za-z][A-Za-z0-9\s\p{P}]*$/;

    // V�rifier si la valeur de l'input est valide en utilisant l'expression r�guli�re
    if (regex.test(value)) {
      fili�reInput.classList.add('is-valid');
      fili�reInput.classList.remove('is-invalid');
    } else {
      fili�reInput.classList.add('is-invalid');
      fili�reInput.classList.remove('is-valid');
    }
  });

  
    // �couter l'�v�nement de changement de valeur
    typeStageInput.addEventListener('input', function() {
    const value = typeStageInput.value.trim(); // R�cup�rer la valeur et supprimer les espaces en d�but et fin

    // D�finir l'expression r�guli�re pour la validation
    const regex = /^[A-Za-z][A-Za-z0-9\s\p{P}]*$/;

    // V�rifier si la valeur de l'input est valide en utilisant l'expression r�guli�re
    if (regex.test(value)) {
      typeStageInput.classList.add('is-valid');
      typeStageInput.classList.remove('is-invalid');
    } else {
      typeStageInput.classList.add('is-invalid');
      typeStageInput.classList.remove('is-valid');
    }
  });

 
  
    // �couter l'�v�nement de changement de valeur
    emailInput.addEventListener('input', function() {
    const value = emailInput.value.trim(); // R�cup�rer la valeur et supprimer les espaces en d�but et fin

    // D�finir l'expression r�guli�re pour la validation
    const regex = /^[A-Za-z][A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]{2,6}$/;

    // V�rifier si la valeur de l'input est valide en utilisant l'expression r�guli�re
    if (regex.test(value)) {
      emailInput.classList.add('is-valid');
      emailInput.classList.remove('is-invalid');
    } else {
      emailInput.classList.add('is-invalid');
      emailInput.classList.remove('is-valid');
    }
  });

  
    // �couter l'�v�nement de changement de valeur
    phoneInput.addEventListener('input', function() {
    const value = phoneInput.value.trim(); // R�cup�rer la valeur et supprimer les espaces en d�but et fin

    // D�finir l'expression r�guli�re pour la validation
    const regex = /^(\+237)?[2368]\d{7,8}$/;

    // V�rifier si la valeur de l'input est valide en utilisant l'expression r�guli�re
    if (regex.test(value)) {
      phoneInput.classList.add('is-valid');
      phoneInput.classList.remove('is-invalid');
    } else {
      phoneInput.classList.add('is-invalid');
      phoneInput.classList.remove('is-valid');
    }
  });
  
  
  // �couter l'�v�nement de changement de valeur
  dateDebutInput.addEventListener('input', function() {
    // V�rifier si la valeur de l'input est valide
    if (dateDebutInput.validity.valid) {
      // Si la valeur est valide, ajouter la classe CSS 'is-valid'
      dateDebutInput.classList.add('is-valid');
      // Supprimer la classe CSS 'is-invalid' si elle existe
      dateDebutInput.classList.remove('is-invalid');
    } else {
      // Si la valeur n'est pas valide, ajouter la classe CSS 'is-invalid'
      dateDebutInput.classList.add('is-invalid');
      // Supprimer la classe CSS 'is-valid' si elle existe
      dateDebutInput.classList.remove('is-valid');
    }
});

  
  // �couter l'�v�nement de changement de valeur
  dateFinInput.addEventListener('input', function() {
    // V�rifier si la valeur de l'input est valide
    if (dateFinInput.validity.valid) {
      // Si la valeur est valide, ajouter la classe CSS 'is-valid'
      dateFinInput.classList.add('is-valid');
      // Supprimer la classe CSS 'is-invalid' si elle existe
      dateFinInput.classList.remove('is-invalid');
    } else {
      // Si la valeur n'est pas valide, ajouter la classe CSS 'is-invalid'
      dateFinInput.classList.add('is-invalid');
      // Supprimer la classe CSS 'is-valid' si elle existe
      dateFinInput.classList.remove('is-valid');
    }
});

  
    // �couter l'�v�nement de changement de valeur
    dur�eInput.addEventListener('input', function() {
    const value = dur�eInput.value.trim(); // R�cup�rer la valeur et supprimer les espaces en d�but et fin

    // D�finir l'expression r�guli�re pour la validation
    const regex = /^[A-Za-z0-9\s\p{P}]*$/;

    // V�rifier si la valeur de l'input est valide en utilisant l'expression r�guli�re
    if (regex.test(value)) {
      dur�eInput.classList.add('is-valid');
      dur�eInput.classList.remove('is-invalid');
    } else {
      dur�eInput.classList.add('is-invalid');
      dur�eInput.classList.remove('is-valid');
    }
  });

// �couter l'�v�nement de changement de valeur pour les deux champs
passwordInput.addEventListener('input', validatePassword);
conf_passwordInput.addEventListener('input', validatePassword);

function validatePassword() {
  const passwordValue = passwordInput.value;
  const confPasswordValue = conf_passwordInput.value;

  if (passwordValue === conf_passwordValue) {
    // Les mots de passe correspondent, ajouter la classe CSS 'is-valid' aux deux champs
    passwordInput.classList.add('is-valid');
    passwordInput.classList.remove('is-invalid');
    conf_passwordInput.classList.add('is-valid');
    conf_passwordInput.classList.remove('is-invalid');
  } else {
    // Les mots de passe ne correspondent pas, ajouter la classe CSS 'is-invalid' aux deux champs
    passwordInput.classList.add('is-invalid');
    passwordInput.classList.remove('is-valid');
    conf_passwordInput.classList.add('is-invalid');
    conf_passwordInput.classList.remove('is-valid');
  }
}
</script>

<style>
  .is-valid {
    border-color: green !important;
  }
  
  .is-invalid {
    border-color: red !important;
  }
</style>

</body>

</html>