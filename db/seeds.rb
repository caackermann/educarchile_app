# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

################################### Users ####################################
u1 = User.new(
  name:                  'Carlos',
  lastname:              'Salame',
  email:                 'cjsalame@uc.cl',
  password:              '123123',
  password_confirmation: '123123'
)
u1.save!

u2 = User.new(
  name:                  'Christian',
  lastname:              'Acherman',
  email:                 'caackermann@uc.cl',
  password:              '123123',
  password_confirmation: '123123'
)
u2.save!

m1 = Methodology.new(
  name:                  'Cultura de aprendizaje colaborativo',
  description:           'Esta metodología aborda una de las habilidades del siglo XXI que se consideran claves para un liderazgo efectivo y para el éxito personal y profesional: la colaboración. En las organizaciones, la colaboración no sólo se entiende como una forma de trabajo en torno a metas compartidas, sino que está orientada al logro de aprendizajes comunes que beneficien a todos los actores del sistema.',
  link:                  'https://www.escuelaenmovimiento.cl/metodologias-innovadoras/cultura-de-aprendizaje-colaborativo'
)
m1.save!
m2 = Methodology.new(
  name:                  'Ambientes de Aprendizaje Auto-organizado',
  description:           'Esta metodología propone un proceso en el cual los niños aprenden a hacer preguntas y a buscar ellos mismos las respuestas. Surgió de estudios que muestran que los niños pueden aprender casi cualquier cosa por sí solos. El punto es estimular su curiosidad. Los Ambientes de Aprendizaje Auto-organizado (AAA) se crean cuando los educadores y/o padres incitan, motivan e instan a los niños a trabajar como comunidad para responder sus propias preguntas significativas usando internet.',
  link:                  'https://www.escuelaenmovimiento.cl/metodologias-innovadoras/ambientes-de-aprendizaje-auto-organizado'
)
m2.save!
m3 = Methodology.new(
  name:                  'Aprendizaje basado en proyectos interdisciplinarios',
  description:           'Esta es una metodología que se propone tratar los contenidos escolares desde una perspectiva interdisciplinaria. Integra tres o más sectores de aprendizaje para abordar un problema, el cual se resuelve a través de un proyecto que realizan los alumnos durante gran parte del año escolar.',
  link:                  'https://www.escuelaenmovimiento.cl/metodologias-innovadoras/aprendizaje-basado-en-proyectos-interdisciplinarios'
)
m3.save!
m4 = Methodology.new(
  name:                  'Aprendizaje Expedicionario',
  description:           'Esta metodología promueve un tipo de aprendizaje que se basa en aterrizar contenidos del curriculum escolar a través de temas específicos de la realidad local del entorno de la escuela. Para ello, los profesores deben ser capaces de buscar estas asociaciones entre los contenidos y las situaciones reales.',
  link:                  'https://www.escuelaenmovimiento.cl/metodologias-innovadoras/aprendizaje-expedicionario'
)
m4.save!
m5 = Methodology.new(
  name:                  'Ingeniería para niños (EFK)',
  description:           'La metodología de Engineering for Kids (EFK) se basa en la premisa de que los niños aprenden y fijan mejor los conocimientos cuando se divierten y se involucran en el proceso de aprendizaje. Un escolar que investiga, experimenta y prueba los contenidos que se le entregan va a conservar lo aprendido en el tiempo.',
  link:                  'https://www.escuelaenmovimiento.cl/metodologias-innovadoras/ingenieria-para-ninos-efk'
)
m5.save!
m6 = Methodology.new(
  name:                  'Tinker Trak: Aprendizaje memorable',
  description:           'Esta metodología postula que el aprendizaje es mucho más efectivo si se hace a través de experiencias memorables y ligadas a la emociones de los estudiantes. Tinker Trak concibe la experiencia de aprendizaje como un proyecto de construcción real que integre las motivaciones intrínsecas del alumno con los contenidos curriculares.',
  link:                  'https://www.escuelaenmovimiento.cl/metodologias-innovadoras/tinker-trak-aprendizaje-memorable'
)
m6.save!
m7 = Methodology.new(
  name:                  'Búsqueda de información',
  description:           'La era de la información crea grandes desafíos para los estudiantes del siglo XXI, los cuales se ven enfrentados a un sin número de información frente a la cual pueden tener acceso de manera fácil, directa y por sobre todo gratuita. En virtud de lo antes expuesto, es necesario que los estudiantes sepan cómo aprovechar esta información según las respectivas necesidades que estos tengan tanto en su entorno escolar como también para su vida diaria.',
  link:                  'https://www.escuelaenmovimiento.cl/metodologias-innovadoras/busqueda-de-informacion'
)
m7.save!
m8 = Methodology.new(
  name:                  'Pre-Textos, el arte como exploración',
  description:           'Esta es una metodología que busca generar lectores creativos y reflexivos a través de la creación artística. Tiene como objetivo desarrollar la alfabetización al más alto nivel de comprensión en un marco de formación cívica; es decir, busca formar ciudadanos creativos que aprecien y respeten al resto de la sociedad.',
  link:                  'https://www.escuelaenmovimiento.cl/metodologias-innovadoras/pre-textos-el-arte-como-exploracion'
)
m8.save!
