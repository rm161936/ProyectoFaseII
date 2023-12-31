USE [ProyectoFinalDAS]
GO
/****** Object:  User [local]    Script Date: 12/06/2023 23:17:03 ******/
CREATE USER [local] FOR LOGIN [local] WITH DEFAULT_SCHEMA=[dbo]
GO
ALTER ROLE [db_datareader] ADD MEMBER [local]
GO
ALTER ROLE [db_datawriter] ADD MEMBER [local]
GO
/****** Object:  Table [dbo].[Base]    Script Date: 12/06/2023 23:17:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Base](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Seccion] [varchar](50) NULL,
	[Enlace] [varchar](50) NULL,
	[UrlContenido] [varchar](100) NULL,
	[Descripcion] [varchar](1000) NULL,
 CONSTRAINT [PK_Base] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Carreras]    Script Date: 12/06/2023 23:17:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Carreras](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Titulo] [varchar](50) NULL,
	[IdBase] [int] NULL,
	[TipoId] [int] NULL,
	[descripcion] [varchar](700) NULL,
 CONSTRAINT [PK_Carreras] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Consulta]    Script Date: 12/06/2023 23:17:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Consulta](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Email] [varchar](50) NULL,
	[Consulta] [varchar](200) NULL,
	[IdTipo] [int] NULL,
	[IdBase] [int] NULL,
 CONSTRAINT [PK_Consulta] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Noticias]    Script Date: 12/06/2023 23:17:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Noticias](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[IdBase] [int] NULL,
	[Imagen] [varchar](500) NULL,
	[Titulo] [varchar](200) NULL,
	[Descripcion] [varchar](500) NULL,
 CONSTRAINT [PK_Noticias] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TipoCarrera]    Script Date: 12/06/2023 23:17:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TipoCarrera](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Tipo] [varchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TipoConsulta]    Script Date: 12/06/2023 23:17:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TipoConsulta](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Tipo] [varchar](50) NULL,
 CONSTRAINT [PK_TipoConsulta] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Base] ON 

INSERT [dbo].[Base] ([Id], [Seccion], [Enlace], [UrlContenido], [Descripcion]) VALUES (2, N'Principal', N'/Home', N'https://www.youtube.com/embed/5ZXNhf8yCmQ', N'La Universidad Don Bosco es continuadora del esfuerzo iniciado por Don Bosco y que se orienta hacia la educación integral de los jóvenes.

El Ideario de la UDB es el conjunto de ideas, principios y criterios que de manera organizada, conforman su "ideal" o su "deber ser"; nace de la rica experiencia pedagógica de más de un siglo heredada a los salesianos por Don Bosco, la cual se enriquece a través de los desafíos que surgen desde el contexto local (Soyapango) y nacional (El Salvador).

Creado en 2001, reúne la mística universitaria enraizada en los valores evangélicos, la flexibilidad del estilo educativo de Don Bosco y la preocupación por acompañar al joven en su proceso de madurez; así como el perfil del profesional que convoca.')
INSERT [dbo].[Base] ([Id], [Seccion], [Enlace], [UrlContenido], [Descripcion]) VALUES (3, N'Carreras', N'/Carrera', NULL, NULL)
SET IDENTITY_INSERT [dbo].[Base] OFF
GO
SET IDENTITY_INSERT [dbo].[Carreras] ON 

INSERT [dbo].[Carreras] ([Id], [Titulo], [IdBase], [TipoId], [descripcion]) VALUES (14, N'Ingeniería Mecánica', 3, 1, N'El/la Ingeniero/a Mecánico/a de la Universidad Don Bosco será un profesional con altas competencias técnicas, académicas y tecnológicas; con pleno conocimiento de sus responsabilidades y compromisos con la sociedad.')
INSERT [dbo].[Carreras] ([Id], [Titulo], [IdBase], [TipoId], [descripcion]) VALUES (15, N'Ingeniería Industrial', 3, 1, N'El/la Ingeniero/a Industrial de la Universidad Don Bosco, es el profesional que diseña, implementa, administra, mejora y optimiza los sistemas productivos de bienes y/o servicios gestionando los recursos humanos, tecnológicos y financieros.')
INSERT [dbo].[Carreras] ([Id], [Titulo], [IdBase], [TipoId], [descripcion]) VALUES (16, N'Ingeniería Biomédica', 3, 1, N'El/la Ingeniero/a Biomédico/a graduado de la Universidad Don Bosco es el profesional que gestiona tecnologías médicas de instrumentación e ingeniería clínica a través de proyectos clínicos hospitalarios, considerando la innovación y el cumplimiento de los estándares, normativas y regulaciones vigentes.')
INSERT [dbo].[Carreras] ([Id], [Titulo], [IdBase], [TipoId], [descripcion]) VALUES (17, N'Ingeniería en Ciencias de la Computación', 3, 1, N'El/la Ingeniero/a en Ciencias de la Computación de la Universidad Don Bosco es el profesional que gestiona proyectos informáticos, crea software innovadores y gestiona redes informáticas, aplicando normas técnicas internacionales.')
INSERT [dbo].[Carreras] ([Id], [Titulo], [IdBase], [TipoId], [descripcion]) VALUES (18, N'Ingeniería Eléctrica', 3, 1, N'El/la Ingeniero/a Electricista de la Universidad Don Bosco es el profesional que gestiona, formula y evalúa proyectos de energía, para proponer soluciones a la problemática energética nacional y regional; desarrollando técnicas y metodologías en el análisis, operación, optimización y control de los sistemas de potencia.')
INSERT [dbo].[Carreras] ([Id], [Titulo], [IdBase], [TipoId], [descripcion]) VALUES (19, N'Licenciatura en Ciencias de la Comunicación', 3, 2, N'El/la Licenciado/a en Ciencias de la Comunicación de la Universidad Don Bosco es un profesional capacitado para producir mensajes en forma oral, escrita, y gráfica y visual, destinados a los distintos soportes Multimedia existentes, esto mediante procesos de investigación previa. Además, el profesional formado en este programa académico es capaz de gestionar e integrar los diferentes procesos estratégicos de comunicación que se dan dentro de una organización, con el fin de lograr los objetivos estratégicos establecidos por esta.')
SET IDENTITY_INSERT [dbo].[Carreras] OFF
GO
SET IDENTITY_INSERT [dbo].[Consulta] ON 

INSERT [dbo].[Consulta] ([Id], [Email], [Consulta], [IdTipo], [IdBase]) VALUES (1, N'fcortez@redserfinsa.com', N'Hello', 5, NULL)
INSERT [dbo].[Consulta] ([Id], [Email], [Consulta], [IdTipo], [IdBase]) VALUES (2, N'reylich100@gmail.com', N'Mal servicio en administración academica', 4, NULL)
INSERT [dbo].[Consulta] ([Id], [Email], [Consulta], [IdTipo], [IdBase]) VALUES (3, N'fcortez@redserfinsa.com', N'Adiós.', 5, NULL)
INSERT [dbo].[Consulta] ([Id], [Email], [Consulta], [IdTipo], [IdBase]) VALUES (4, N'reylich100@gmail.com', N'Hi', 6, NULL)
INSERT [dbo].[Consulta] ([Id], [Email], [Consulta], [IdTipo], [IdBase]) VALUES (5, N'fcortez@redserfinsa.com', N'Consulta sobre inscripción', 7, NULL)
SET IDENTITY_INSERT [dbo].[Consulta] OFF
GO
SET IDENTITY_INSERT [dbo].[Noticias] ON 

INSERT [dbo].[Noticias] ([Id], [IdBase], [Imagen], [Titulo], [Descripcion]) VALUES (3, 2, N'https://www.udb.edu.sv/udb_files/recursos_noticias/1880/thumb.jpg', N'Estudiantes salvadoreños reciben su titulo de bachillerato gracias a programas de modalidades flexibles', N'Este 8 de junio un grupo de 125 estudiantes salvadoreños recibieron su título de Bachillerato gracias al Proyecto de Becas para Oportunidades Educativas de la Agencia de los Estados Unidos para el Desarrollo Internacional (USAID) y el Organismo de la Naciones Unidas para la Migración en El Salvador (OIM).')
INSERT [dbo].[Noticias] ([Id], [IdBase], [Imagen], [Titulo], [Descripcion]) VALUES (4, 2, N'https://www.udb.edu.sv/udb_files/recursos_noticias/1878/thumb.jpg', N'Jóvenes son beneficiados con becas universitarias para estudios de ingeniería gracias al Proyecto Alto Impacto Soyapango', N'Como parte de las acciones del Proyecto Alto Impacto Soyapango, implementado por la Fundación Rafael Meza Ayau (FRMA), con el financiamiento de la Agencia de los Estados Unidos para el Desarrollo Internacional (USAID), se realizó la entrega de 34 becas a jóvenes residentes del municipio de Soyapango que estudian carreras técnicas y de ingeniería en la Universidad Don Bosco (UDB), incrementando con esto a 41 el número total de estudiantes beneficiados a la fecha.')
INSERT [dbo].[Noticias] ([Id], [IdBase], [Imagen], [Titulo], [Descripcion]) VALUES (5, 2, N'https://www.udb.edu.sv/udb_files/recursos_noticias/1879/thumb.jpg', N'Estudiantes de la Escuela de Diseño Gráfico e Industrial desarrollan proyectos mediante el Diseño Centrado en las Personas', N'Los alumnos de la Escuela de Diseño Gráfico e Industrial de la Universidad Don Bosco, desarrollaron una serie de proyectos utilizando el concepto Diseño Centrado en las Personas DCP, con el objetivo de dar respuesta a problemáticas sociales.

El DCP, es un proceso y conjunto de técnicas empleadas para proponer soluciones innovadoras al mundo, por medio del uso de productos, servicios, espacios, organizaciones y modos de interacción. ')
SET IDENTITY_INSERT [dbo].[Noticias] OFF
GO
SET IDENTITY_INSERT [dbo].[TipoCarrera] ON 

INSERT [dbo].[TipoCarrera] ([Id], [Tipo]) VALUES (1, N'Ingenierías')
INSERT [dbo].[TipoCarrera] ([Id], [Tipo]) VALUES (2, N'Licenciaturas')
INSERT [dbo].[TipoCarrera] ([Id], [Tipo]) VALUES (3, N'Técnicos')
INSERT [dbo].[TipoCarrera] ([Id], [Tipo]) VALUES (4, N'Profesorados')
SET IDENTITY_INSERT [dbo].[TipoCarrera] OFF
GO
SET IDENTITY_INSERT [dbo].[TipoConsulta] ON 

INSERT [dbo].[TipoConsulta] ([Id], [Tipo]) VALUES (4, N'Queja')
INSERT [dbo].[TipoConsulta] ([Id], [Tipo]) VALUES (5, N'Felicitación')
INSERT [dbo].[TipoConsulta] ([Id], [Tipo]) VALUES (6, N'Consulta de inscripción')
INSERT [dbo].[TipoConsulta] ([Id], [Tipo]) VALUES (7, N'Otra')
SET IDENTITY_INSERT [dbo].[TipoConsulta] OFF
GO
ALTER TABLE [dbo].[Carreras]  WITH CHECK ADD FOREIGN KEY([IdBase])
REFERENCES [dbo].[Base] ([Id])
GO
ALTER TABLE [dbo].[Carreras]  WITH CHECK ADD  CONSTRAINT [FK_TipoCarrera] FOREIGN KEY([TipoId])
REFERENCES [dbo].[TipoCarrera] ([Id])
GO
ALTER TABLE [dbo].[Carreras] CHECK CONSTRAINT [FK_TipoCarrera]
GO
ALTER TABLE [dbo].[Consulta]  WITH CHECK ADD FOREIGN KEY([IdBase])
REFERENCES [dbo].[Base] ([Id])
GO
ALTER TABLE [dbo].[Consulta]  WITH CHECK ADD FOREIGN KEY([IdTipo])
REFERENCES [dbo].[TipoConsulta] ([Id])
GO
ALTER TABLE [dbo].[Noticias]  WITH CHECK ADD FOREIGN KEY([IdBase])
REFERENCES [dbo].[Base] ([Id])
GO
