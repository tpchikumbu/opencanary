PORTNAME=	opencanary
PORTVERSION=	0.7.1
CATEGORIES=	security
LICENSE=	BSD3CLAUSE

MAINTAINER=	info@thinkst.com
COMMENT=	Creates a honeypot to detect network breaches

USES=           python:3.8+	shebangfix	fakeroot	gettext

SHEBANG_FILES=  bin/opencanaryd

USE_PYTHON=     distutils noflavors autoplist

USE_GITHUB=	yes
GH_ACCOUNT=	tpchikumbu
GH_PROJECT=	opencanaryBSD
GH_TAGNAME=	15988c7 #Specifies which release or commit the distfiles are coming from

EXTRACT_DEPENDS=git>0:devel/git \
		${PYTHON_PKGNAMEPREFIX}setuptools>0:devel/py-setuptools \
		${PYTHON_PKGNAMEPREFIX}setuptools-pkg>0:devel/py-setuptools-pkg


BUILD_DEPENDS=	${PYTHON_PKGNAMEPREFIX}pip>0:devel/py-pip \
		${PYTHON_PKGNAMEPREFIX}twisted>0:devel/py-twisted \
		${PYTHON_PKGNAMEPREFIX}pyasn1>0:devel/py-pyasn1 \
		${PYTHON_PKGNAMEPREFIX}cryptography>0:security/py-cryptography \
		${PYTHON_PKGNAMEPREFIX}simplejson>0:devel/py-simplejson \
		${PYTHON_PKGNAMEPREFIX}requests>0:www/py-requests \
		${PYTHON_PKGNAMEPREFIX}zope.interface>0:devel/py-zope.interface \
		${PYTHON_PKGNAMEPREFIX}pypdf3>0:print/py-pypdf3 \
		${PYTHON_PKGNAMEPREFIX}fpdf>0:print/py-fpdf \
		${PYTHON_PKGNAMEPREFIX}passlib>0:security/py-passlib \
		${PYTHON_PKGNAMEPREFIX}Jinja2>0:devel/py-Jinja2 \
		${PYTHON_PKGNAMEPREFIX}bcrypt>0:security/py-bcrypt

RUN_DEPENDS=	bash:shells/bash \
		sudo:security/sudo

.include <bsd.port.mk>
