.class public Lcom/metamoji/un/text/DownloadableFontManager;
.super Ljava/lang/Object;
.source "DownloadableFontManager.java"

# interfaces
.implements Lcom/metamoji/nt/dl/INtDownloadableFontManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/un/text/DownloadableFontManager$SingletonHolder;
    }
.end annotation


# static fields
.field static final pbePassword:Ljava/lang/String; = "LmB-h!_jmaC+"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getFontDir()Ljava/io/File;
    .locals 3

    .line 42
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/metamoji/cm/CmUtils;->getPrivateDataDirectory()Ljava/io/File;

    move-result-object v1

    const-string v2, "font"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public static getInstance()Lcom/metamoji/un/text/DownloadableFontManager;
    .locals 1

    .line 38
    invoke-static {}, Lcom/metamoji/un/text/DownloadableFontManager$SingletonHolder;->-$$Nest$sfgetINSTANCE()Lcom/metamoji/un/text/DownloadableFontManager;

    move-result-object v0

    return-object v0
.end method

.method private newFile(Ljava/io/File;Ljava/util/zip/ZipEntry;)Ljava/io/File;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 111
    new-instance v0, Ljava/io/File;

    invoke-virtual {p2}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 113
    invoke-virtual {p1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object p1

    .line 114
    invoke-virtual {v0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v1

    .line 116
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-object v0

    .line 117
    :cond_0
    new-instance p1, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Entry is outside of the target dir: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public getSysInfoKeys()[Ljava/lang/String;
    .locals 3

    const/4 v0, 0x1

    .line 48
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "font.cr"

    aput-object v2, v0, v1

    return-object v0
.end method

.method public installFont(Ljava/lang/String;Ljava/io/File;)Z
    .locals 8

    .line 65
    const-string v0, "font.cr"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 68
    :cond_0
    invoke-static {}, Lcom/metamoji/un/text/DownloadableFontManager;->getFontDir()Ljava/io/File;

    move-result-object p1

    .line 69
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    .line 70
    invoke-virtual {p1}, Ljava/io/File;->mkdir()Z

    move-result v1

    if-nez v1, :cond_1

    return v0

    :cond_1
    const/16 v1, 0x400

    const/4 v2, 0x0

    .line 78
    :try_start_0
    new-array v1, v1, [B

    .line 79
    new-instance v3, Lcom/metamoji/cm/PBE;

    const-string v4, "LmB-h!_jmaC+"

    invoke-direct {v3, v4}, Lcom/metamoji/cm/PBE;-><init>(Ljava/lang/String;)V

    .line 80
    new-instance v4, Ljava/util/zip/ZipInputStream;

    new-instance v5, Lcom/metamoji/cm/PBE$PBEInputStream;

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v6, Ljava/io/BufferedInputStream;

    new-instance v7, Ljava/io/FileInputStream;

    invoke-direct {v7, p2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v6, v7}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v5, v3, v6}, Lcom/metamoji/cm/PBE$PBEInputStream;-><init>(Lcom/metamoji/cm/PBE;Ljava/io/InputStream;)V

    invoke-direct {v4, v5}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 82
    :goto_0
    :try_start_1
    invoke-virtual {v4}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object p2

    if-eqz p2, :cond_3

    .line 83
    invoke-direct {p0, p1, p2}, Lcom/metamoji/un/text/DownloadableFontManager;->newFile(Ljava/io/File;Ljava/util/zip/ZipEntry;)Ljava/io/File;

    move-result-object p2

    .line 84
    new-instance v2, Ljava/io/BufferedOutputStream;

    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 86
    :goto_1
    invoke-virtual {v4, v1}, Ljava/util/zip/ZipInputStream;->read([B)I

    move-result p2

    const/4 v3, -0x1

    if-eq p2, v3, :cond_2

    .line 87
    invoke-virtual {v2, v1, v0, p2}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_1

    .line 89
    :cond_2
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 99
    :cond_3
    :try_start_2
    invoke-virtual {v4}, Ljava/util/zip/ZipInputStream;->closeEntry()V

    const/4 p1, 0x1

    .line 100
    invoke-virtual {v4}, Ljava/util/zip/ZipInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    return p1

    :catchall_0
    move-exception p1

    move-object v2, v4

    goto :goto_4

    :catch_0
    move-exception p1

    move-object v2, v4

    goto :goto_2

    :catchall_1
    move-exception p1

    goto :goto_4

    :catch_1
    move-exception p1

    .line 93
    :goto_2
    :try_start_3
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v2, :cond_4

    .line 99
    :try_start_4
    invoke-virtual {v2}, Ljava/util/zip/ZipInputStream;->closeEntry()V

    .line 100
    invoke-virtual {v2}, Ljava/util/zip/ZipInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_3

    :catch_2
    move-exception p1

    .line 102
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :cond_4
    :goto_3
    return v0

    :goto_4
    if-eqz v2, :cond_5

    .line 99
    :try_start_5
    invoke-virtual {v2}, Ljava/util/zip/ZipInputStream;->closeEntry()V

    .line 100
    invoke-virtual {v2}, Ljava/util/zip/ZipInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_5

    :catch_3
    move-exception p2

    .line 102
    invoke-virtual {p2}, Ljava/io/IOException;->printStackTrace()V

    .line 106
    :cond_5
    :goto_5
    throw p1
.end method

.method public isFontInstalled(Ljava/lang/String;)Z
    .locals 3

    .line 53
    invoke-static {}, Lcom/metamoji/un/text/FontUtils;->getFontInfos()Ljava/util/List;

    move-result-object p1

    .line 54
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/metamoji/un/text/FontInfo;

    .line 55
    iget-object v1, v0, Lcom/metamoji/un/text/FontInfo;->normalFontFile:Ljava/io/File;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    iget-object v1, v0, Lcom/metamoji/un/text/FontInfo;->normalFontFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    return v2

    .line 57
    :cond_1
    iget-object v1, v0, Lcom/metamoji/un/text/FontInfo;->boldFontFile:Ljava/io/File;

    if-eqz v1, :cond_0

    iget-object v0, v0, Lcom/metamoji/un/text/FontInfo;->boldFontFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    return v2

    :cond_2
    const/4 p1, 0x1

    return p1
.end method

.method public uninstallFont(Ljava/lang/String;)V
    .locals 4

    .line 129
    invoke-static {}, Lcom/metamoji/un/text/DownloadableFontManager;->getFontDir()Ljava/io/File;

    move-result-object p1

    .line 130
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p1

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p1, v1

    .line 131
    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 132
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
