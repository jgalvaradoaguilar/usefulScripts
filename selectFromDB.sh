echo "
set pages 0
set head off
set linesize 5000
set num 20
set feedback off
set colsep \";\"
set trimspool on
set echo off

select msisdn, apn from SimCards where ACTIVATED='N' order by msisdn;

" | sqlplus -s $1 | sed "s/\s*;\s*/;/g" | sed "s/^\s*//"


# Para ejecutarlo:
# ./scriptGab.sh myUserGab/myPasswordGab > salidaGab.txt

