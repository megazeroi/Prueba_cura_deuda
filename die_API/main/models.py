from django.db import models

# Create your models here.
# Tabla SEPOMEX
class SEPOMEX(models.Model):
    d_codigo = models.IntegerField(primary_key=True)
    d_asenta = models.CharField(max_length=100)
    d_tipo_asenta = models.CharField(max_length=19)
    d_mnpio = models.CharField(db_column='D_mnpio', max_length=100)  # Field name made lowercase.
    d_estado = models.CharField(max_length=31)
    d_ciudad = models.CharField(max_length=60)
    d_cp = models.IntegerField(db_column='d_CP')  # Field name made lowercase.
    c_estado = models.IntegerField()
    c_oficina = models.IntegerField()
    c_cp = models.CharField(db_column='c_CP', max_length=1, blank=True, null=True)  # Field name made lowercase.
    c_tipo_asenta = models.IntegerField()
    c_mnpio = models.IntegerField()
    id_asenta_cpcons = models.IntegerField()
    d_zona = models.CharField(max_length=6)
    c_cve_ciudad = models.IntegerField()

    class Meta:
        managed = False
        db_table = 'SEPOMEX'
# Tabla Colonia
class Colonia(SEPOMEX):
    d_codigo = models.OneToOneField('SEPOMEX', models.DO_NOTHING, db_column='d_codigo', primary_key=True)
    d_asenta = models.ForeignKey('SEPOMEX', models.DO_NOTHING, db_column='d_asenta')
    b_colo = models.DateField(blank=True, null=True)

    class Meta:
        managed = False
        db_table = 'Colonia'
        unique_together = (('d_codigo', 'd_asenta'),)
# Tabla Estado
class Estado(SEPOMEX):
    d_codigo = models.OneToOneField('SEPOMEX', models.DO_NOTHING, db_column='d_codigo', primary_key=True)
    d_estado = models.ForeignKey('SEPOMEX', models.DO_NOTHING, db_column='d_estado')
    b_esta = models.DateField(blank=True, null=True)

    class Meta:
        managed = False
        db_table = 'Estado'
        unique_together = (('d_codigo', 'd_estado'),)
# Tabla Municipio
class Municipio(SEPOMEX):
    d_codigo = models.OneToOneField('SEPOMEX', models.DO_NOTHING, db_column='d_codigo', primary_key=True)
    d_mnpio = models.ForeignKey('SEPOMEX', models.DO_NOTHING, db_column='D_mnpio')  # Field name made lowercase.
    b_muni = models.DateField(blank=True, null=True)

    class Meta:
        managed = False
        db_table = 'Municipio'
        unique_together = (('d_codigo', 'd_mnpio'),)
# Tabla Users
class Users(models.Model):
    d_user = models.CharField(max_length=12)
    d_pass = models.CharField(max_length=20)
    d_name = models.CharField(max_length=60)
    d_last = models.CharField(max_length=60)
    d_phone = models.CharField(max_length=20)
    d_mail = models.CharField(max_length=60)

    class Meta:
        managed = False
        db_table = 'USERS'
