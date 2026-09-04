.class public Lcom/metamoji/cm/SecureFile;
.super Ljava/lang/Object;
.source "SecureFile.java"


# static fields
.field private static final sDelimiter:[B

.field private static final sTekito:Ljava/lang/String; = "HmK9ef%F73&q*xYJ+sfFiw8>BvkP!2QIF#ls=?^|4LmRtCei8"


# instance fields
.field private mEncrypt:Z

.field private mFile:Ljava/io/File;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x4

    .line 21
    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/metamoji/cm/SecureFile;->sDelimiter:[B

    return-void

    nop

    :array_0
    .array-data 1
        0xdt
        0xat
        0xdt
        0xat
    .end array-data
.end method

.method public constructor <init>(Ljava/io/File;)V
    .locals 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    invoke-static {}, Lcom/metamoji/cm/CmUtils;->getApplication()Lcom/metamoji/cm/ICmApplication;

    move-result-object v0

    invoke-interface {v0}, Lcom/metamoji/cm/ICmApplication;->isDebug()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lcom/metamoji/cm/SecureFile;->mEncrypt:Z

    .line 29
    iput-object p1, p0, Lcom/metamoji/cm/SecureFile;->mFile:Ljava/io/File;

    return-void
.end method

.method private writeStringEncrypt(Ljava/lang/String;)V
    .locals 4

    const/4 v0, 0x0

    .line 50
    :try_start_0
    new-instance v1, Lcom/metamoji/cm/PBE;

    const-string v2, "HmK9ef%F73&q*xYJ+sfFiw8>BvkP!2QIF#ls=?^|4LmRtCei8"

    invoke-direct {v1, v2}, Lcom/metamoji/cm/PBE;-><init>(Ljava/lang/String;)V

    .line 51
    invoke-virtual {v1, p1}, Lcom/metamoji/cm/PBE;->encryptString(Ljava/lang/String;)[B

    move-result-object p1

    const/4 v1, 0x2

    .line 52
    invoke-static {p1, v1}, Landroid/util/Base64;->encode([BI)[B

    move-result-object p1

    .line 55
    iget-object v1, p0, Lcom/metamoji/cm/SecureFile;->mFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    .line 58
    new-instance v2, Ljava/io/FileOutputStream;

    iget-object v3, p0, Lcom/metamoji/cm/SecureFile;->mFile:Ljava/io/File;

    invoke-direct {v2, v3, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v1, :cond_0

    .line 60
    :try_start_1
    sget-object v0, Lcom/metamoji/cm/SecureFile;->sDelimiter:[B

    invoke-virtual {v2, v0}, Ljava/io/FileOutputStream;->write([B)V

    .line 62
    :cond_0
    invoke-virtual {v2, p1}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 70
    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5

    return-void

    :catchall_0
    move-exception p1

    move-object v0, v2

    goto :goto_0

    :catch_0
    move-object v0, v2

    goto :goto_1

    :catch_1
    move-object v0, v2

    goto :goto_3

    :catchall_1
    move-exception p1

    :goto_0
    if-eqz v0, :cond_1

    :try_start_3
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 75
    :catch_2
    :cond_1
    throw p1

    :catch_3
    :goto_1
    if-eqz v0, :cond_2

    .line 70
    :goto_2
    :try_start_4
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_5

    goto :goto_4

    :catch_4
    :goto_3
    if-eqz v0, :cond_2

    goto :goto_2

    :catch_5
    :cond_2
    :goto_4
    return-void
.end method

.method private writeStringPlain(Ljava/lang/String;)V
    .locals 4

    const/4 v0, 0x0

    .line 81
    :try_start_0
    iget-object v1, p0, Lcom/metamoji/cm/SecureFile;->mFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    .line 84
    new-instance v2, Ljava/io/FileOutputStream;

    iget-object v3, p0, Lcom/metamoji/cm/SecureFile;->mFile:Ljava/io/File;

    invoke-direct {v2, v3, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v1, :cond_0

    .line 86
    :try_start_1
    sget-object v0, Lcom/metamoji/cm/SecureFile;->sDelimiter:[B

    invoke-virtual {v2, v0}, Ljava/io/FileOutputStream;->write([B)V

    .line 88
    :cond_0
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 94
    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    return-void

    :catchall_0
    move-object v0, v2

    :catchall_1
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :catchall_2
    :cond_1
    return-void
.end method


# virtual methods
.method public writeString(Ljava/lang/String;)V
    .locals 1

    .line 40
    iget-boolean v0, p0, Lcom/metamoji/cm/SecureFile;->mEncrypt:Z

    if-eqz v0, :cond_0

    .line 41
    invoke-direct {p0, p1}, Lcom/metamoji/cm/SecureFile;->writeStringEncrypt(Ljava/lang/String;)V

    return-void

    .line 43
    :cond_0
    invoke-direct {p0, p1}, Lcom/metamoji/cm/SecureFile;->writeStringPlain(Ljava/lang/String;)V

    return-void
.end method
