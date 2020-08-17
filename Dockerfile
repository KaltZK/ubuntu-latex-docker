FROM ubuntu:focal
RUN apt-get update && DEBIAN_FRONTEND=noninteractive apt-get -yq install make imagemagick texlive-* &&\
        sed -i 's/<policy domain="coder" rights="none" pattern="PDF" \/>/<policy domain="coder" rights="read|write" pattern="PDF" \/>/g' /etc/ImageMagick-6/policy.xml &&\
        sed -i 's/<policy domain="coder" rights="none" pattern="EPS" \/>/<policy domain="coder" rights="read|write" pattern="EPS" \/>/g' /etc/ImageMagick-6/policy.xml &&\
        sed -i 's/<policy domain="coder" rights="none" pattern="XPS" \/>/<policy domain="coder" rights="read|write" pattern="XPS" \/>/g' /etc/ImageMagick-6/policy.xml &&\
        sed -i 's/<policy domain="coder" rights="none" pattern="XP" \/>/<policy domain="coder" rights="read|write" pattern="XP" \/>/g' /etc/ImageMagick-6/policy.xml &&\
        sed -i 's/<policy domain="coder" rights="none" pattern="XP2" \/>/<policy domain="coder" rights="read|write" pattern="XP2" \/>/g' /etc/ImageMagick-6/policy.xml
