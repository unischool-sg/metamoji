.class public Lcom/metamoji/cv/xml/CvZippedXMLConvertUtils;
.super Ljava/lang/Object;
.source "CvZippedXMLConvertUtils.java"


# static fields
.field public static final ENCRYPTION_FILENAME:Ljava/lang/String; = "encrypted"

.field public static final MD5CHECKSUM_FILENAME:Ljava/lang/String; = "signature"

.field public static final OPTION_KEY_DECRYPTOR:Ljava/lang/String; = "doc_decrypter"

.field public static final OPTION_KEY_ERRORCODE:Ljava/lang/String; = "errorCode"

.field public static final OPTKEY_CONVERTER_ERROR_CODE:Ljava/lang/String; = "converterErrorCode"

.field public static final OPTKEY_DUP_COLLABONOTE_ID:Ljava/lang/String; = "duplicatedCollaboNoteID"

.field public static final OPTKEY_PROC_COLLABO_SETTINGS_DELEGATE:Ljava/lang/String; = "ProcessCollaboSettingsDelegate"

.field public static final ROOT_MANIFEST_FILENAME:Ljava/lang/String; = "manifest.1.xml"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static compressDocumentInDirectory(Ljava/io/File;Landroid/net/Uri;Lcom/metamoji/cm/PBE;)Lcom/metamoji/cv/CvResult$Export;
    .locals 8

    .line 248
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    if-eqz p2, :cond_0

    .line 252
    invoke-static {v0, p2, p0}, Lcom/metamoji/cv/xml/CvZippedXMLConvertUtils;->encryptFiles([Ljava/io/File;Lcom/metamoji/cm/PBE;Ljava/io/File;)Z

    move-result p0

    if-nez p0, :cond_0

    .line 253
    sget-object p0, Lcom/metamoji/cv/CvResult$Export;->FailPassword:Lcom/metamoji/cv/CvResult$Export;

    return-object p0

    .line 258
    :cond_0
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    .line 259
    new-instance v0, Lcom/metamoji/cv/xml/CvZippedXMLConvertUtils$1;

    invoke-direct {v0}, Lcom/metamoji/cv/xml/CvZippedXMLConvertUtils$1;-><init>()V

    invoke-static {p0, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 267
    sget-object v0, Lcom/metamoji/cm/HashGenerator$Algorithm;->MD5:Lcom/metamoji/cm/HashGenerator$Algorithm;

    invoke-static {v0}, Lcom/metamoji/cm/HashGenerator;->createHashGenerator(Lcom/metamoji/cm/HashGenerator$Algorithm;)Lcom/metamoji/cm/HashGenerator;

    move-result-object v0

    if-nez v0, :cond_1

    .line 269
    sget-object p0, Lcom/metamoji/cv/CvResult$Export;->FailEncrypt:Lcom/metamoji/cv/CvResult$Export;

    return-object p0

    .line 273
    :cond_1
    invoke-virtual {v0}, Lcom/metamoji/cm/HashGenerator;->appendSecretSeed()V

    .line 278
    invoke-static {}, Lcom/metamoji/cm/CmByteBuffer;->getBuffer()[B

    move-result-object v1

    const/4 v2, 0x0

    .line 281
    :try_start_0
    invoke-static {}, Lcom/metamoji/cm/CmUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {v3, p1}, Lcom/metamoji/cm/OopsKt;->openTruncatedStream(Landroid/content/ContentResolver;Landroid/net/Uri;)Ljava/io/OutputStream;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 282
    :try_start_1
    new-instance v3, Ljava/util/zip/ZipOutputStream;

    invoke-direct {v3, p1}, Ljava/util/zip/ZipOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 284
    :try_start_2
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/io/File;

    .line 286
    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/metamoji/cv/xml/CvZippedXMLConvertUtils;->is_ignore_file(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    goto :goto_0

    .line 290
    :cond_2
    new-instance v6, Ljava/io/BufferedInputStream;

    new-instance v7, Ljava/io/FileInputStream;

    invoke-direct {v7, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v6, v7}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 291
    :try_start_3
    new-instance v7, Ljava/util/zip/ZipEntry;

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v7, v4}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v7}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    .line 294
    :goto_1
    array-length v4, v1

    invoke-virtual {v6, v1, v5, v4}, Ljava/io/BufferedInputStream;->read([BII)I

    move-result v4

    if-ltz v4, :cond_3

    .line 295
    invoke-virtual {v3, v1, v5, v4}, Ljava/util/zip/ZipOutputStream;->write([BII)V

    .line 296
    invoke-virtual {v0, v1, v5, v4}, Lcom/metamoji/cm/HashGenerator;->append([BII)V

    goto :goto_1

    .line 298
    :cond_3
    invoke-virtual {v3}, Ljava/util/zip/ZipOutputStream;->closeEntry()V

    .line 299
    invoke-virtual {v6}, Ljava/io/BufferedInputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_4

    :catch_0
    move-exception p0

    goto :goto_5

    .line 303
    :cond_4
    :try_start_4
    invoke-virtual {v0}, Lcom/metamoji/cm/HashGenerator;->getHash()[B

    move-result-object p0

    if-nez p0, :cond_6

    .line 305
    sget-object p0, Lcom/metamoji/cv/CvResult$Export;->FailEncrypt:Lcom/metamoji/cv/CvResult$Export;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 328
    invoke-static {v1}, Lcom/metamoji/cm/CmByteBuffer;->releaseBuffer([B)V

    .line 331
    :try_start_5
    invoke-virtual {v3}, Ljava/util/zip/ZipOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_2

    :catch_1
    move-exception p2

    .line 333
    invoke-static {p2}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;)V

    :goto_2
    if-eqz p1, :cond_5

    .line 338
    :try_start_6
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_3

    :catch_2
    move-exception p1

    .line 340
    invoke-static {p1}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;)V

    :cond_5
    :goto_3
    return-object p0

    .line 309
    :cond_6
    :try_start_7
    new-instance v0, Ljava/util/zip/ZipEntry;

    const-string v4, "signature"

    invoke-direct {v0, v4}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    .line 310
    array-length v0, p0

    invoke-virtual {v3, p0, v5, v0}, Ljava/util/zip/ZipOutputStream;->write([BII)V

    .line 311
    invoke-virtual {v3}, Ljava/util/zip/ZipOutputStream;->closeEntry()V

    if-eqz p2, :cond_7

    .line 315
    invoke-virtual {p2}, Lcom/metamoji/cm/PBE;->getEncryptedPassword()[B

    move-result-object p0

    .line 316
    new-instance p2, Ljava/util/zip/ZipEntry;

    const-string v0, "encrypted"

    invoke-direct {p2, v0}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    .line 317
    array-length p2, p0

    invoke-virtual {v3, p0, v5, p2}, Ljava/util/zip/ZipOutputStream;->write([BII)V

    .line 319
    :cond_7
    invoke-virtual {v3}, Ljava/util/zip/ZipOutputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 321
    :try_start_8
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_4
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 323
    :try_start_9
    sget-object p0, Lcom/metamoji/cv/CvResult$Export;->Success:Lcom/metamoji/cv/CvResult$Export;
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_5
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    .line 328
    invoke-static {v1}, Lcom/metamoji/cm/CmByteBuffer;->releaseBuffer([B)V

    return-object p0

    :catchall_1
    move-exception p0

    move-object v6, v2

    :goto_4
    move-object v2, v3

    goto :goto_a

    :catch_3
    move-exception p0

    move-object v6, v2

    :goto_5
    move-object v2, v3

    goto :goto_6

    :catchall_2
    move-exception p0

    move-object v6, v2

    goto :goto_a

    :catch_4
    move-exception p0

    move-object v6, v2

    goto :goto_6

    :catchall_3
    move-exception p0

    move-object p1, v2

    move-object v6, p1

    goto :goto_a

    :catch_5
    move-exception p0

    move-object p1, v2

    move-object v6, p1

    .line 325
    :goto_6
    :try_start_a
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Cannot create zip file: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/metamoji/cm/CmLog;->warn(Ljava/lang/String;)V

    .line 326
    sget-object p0, Lcom/metamoji/cv/CvResult$Export;->FailCreateZip:Lcom/metamoji/cv/CvResult$Export;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    .line 328
    invoke-static {v1}, Lcom/metamoji/cm/CmByteBuffer;->releaseBuffer([B)V

    if-eqz v2, :cond_8

    .line 331
    :try_start_b
    invoke-virtual {v2}, Ljava/util/zip/ZipOutputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_6

    goto :goto_7

    :catch_6
    move-exception p2

    .line 333
    invoke-static {p2}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;)V

    :cond_8
    :goto_7
    if-eqz p1, :cond_9

    .line 338
    :try_start_c
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_7

    goto :goto_8

    :catch_7
    move-exception p1

    .line 340
    invoke-static {p1}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;)V

    :cond_9
    :goto_8
    if-eqz v6, :cond_a

    .line 345
    :try_start_d
    invoke-virtual {v6}, Ljava/io/BufferedInputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_8

    goto :goto_9

    :catch_8
    move-exception p1

    .line 347
    invoke-static {p1}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;)V

    :cond_a
    :goto_9
    return-object p0

    :catchall_4
    move-exception p0

    .line 328
    :goto_a
    invoke-static {v1}, Lcom/metamoji/cm/CmByteBuffer;->releaseBuffer([B)V

    if-eqz v2, :cond_b

    .line 331
    :try_start_e
    invoke-virtual {v2}, Ljava/util/zip/ZipOutputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_9

    goto :goto_b

    :catch_9
    move-exception p2

    .line 333
    invoke-static {p2}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;)V

    :cond_b
    :goto_b
    if-eqz p1, :cond_c

    .line 338
    :try_start_f
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_a

    goto :goto_c

    :catch_a
    move-exception p1

    .line 340
    invoke-static {p1}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;)V

    :cond_c
    :goto_c
    if-eqz v6, :cond_d

    .line 345
    :try_start_10
    invoke-virtual {v6}, Ljava/io/BufferedInputStream;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_b

    goto :goto_d

    :catch_b
    move-exception p1

    .line 347
    invoke-static {p1}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;)V

    .line 350
    :cond_d
    :goto_d
    throw p0
.end method

.method private static createTempDirectory()Ljava/io/File;
    .locals 4

    const/4 v0, 0x0

    .line 45
    :try_start_0
    invoke-static {}, Lcom/metamoji/cm/CmUtils;->getTemporaryDataDirectory()Ljava/io/File;

    move-result-object v1

    .line 46
    new-instance v2, Ljava/io/File;

    const-string v3, ".zxmlcv"

    invoke-direct {v2, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 47
    invoke-static {v2}, Lcom/metamoji/cm/CmUtils;->deleteDirOrFile(Ljava/io/File;)Z

    .line 48
    invoke-virtual {v2}, Ljava/io/File;->mkdir()Z

    move-result v1

    if-nez v1, :cond_0

    .line 49
    const-string v1, "cannot create temporary directory."

    invoke-static {v1}, Lcom/metamoji/cm/CmLog;->warn(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :cond_0
    return-object v2

    :catch_0
    move-exception v1

    .line 54
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "failed to create temporary directory. : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/metamoji/cm/CmLog;->warn(Ljava/lang/String;)V

    return-object v0
.end method

.method private static decryptFile(Ljava/io/File;Lcom/metamoji/cm/PBE;Ljava/io/File;)Z
    .locals 3

    .line 204
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".zz"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p2, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 206
    :try_start_0
    new-instance p2, Ljava/io/FileInputStream;

    invoke-direct {p2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 207
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 208
    invoke-virtual {p1, p2, v1}, Lcom/metamoji/cm/PBE;->decryptStream(Ljava/io/InputStream;Ljava/io/OutputStream;)Z

    move-result p1

    .line 209
    invoke-virtual {p2}, Ljava/io/FileInputStream;->close()V

    .line 210
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    if-eqz p1, :cond_0

    .line 212
    invoke-static {v0, p0}, Lcom/metamoji/cm/CmUtils;->copyFile(Ljava/io/File;Ljava/io/File;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 219
    :cond_0
    invoke-static {v0}, Lcom/metamoji/cm/CmUtils;->deleteDirOrFile(Ljava/io/File;)Z

    return p1

    :catchall_0
    move-exception p0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 216
    :try_start_1
    invoke-static {p0}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 219
    invoke-static {v0}, Lcom/metamoji/cm/CmUtils;->deleteDirOrFile(Ljava/io/File;)Z

    const/4 p0, 0x0

    return p0

    :goto_0
    invoke-static {v0}, Lcom/metamoji/cm/CmUtils;->deleteDirOrFile(Ljava/io/File;)Z

    .line 220
    throw p0
.end method

.method private static decryptFiles([Ljava/io/File;Lcom/metamoji/cm/PBE;Ljava/io/File;)Z
    .locals 5

    .line 227
    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_2

    aget-object v3, p0, v2

    .line 228
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/metamoji/cv/xml/CvZippedXMLConvertUtils;->is_ignore_file(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_1

    .line 233
    :cond_0
    invoke-static {v3, p1, p2}, Lcom/metamoji/cv/xml/CvZippedXMLConvertUtils;->decryptFile(Ljava/io/File;Lcom/metamoji/cm/PBE;Ljava/io/File;)Z

    move-result v3

    if-nez v3, :cond_1

    return v1

    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x1

    return p0
.end method

.method private static encryptFile(Ljava/io/File;Lcom/metamoji/cm/PBE;Ljava/io/File;)Z
    .locals 3

    .line 155
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".zz"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p2, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 157
    :try_start_0
    new-instance p2, Ljava/io/FileInputStream;

    invoke-direct {p2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 158
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 159
    invoke-virtual {p1, p2, v1}, Lcom/metamoji/cm/PBE;->encryptStream(Ljava/io/InputStream;Ljava/io/OutputStream;)Z

    move-result p1

    .line 160
    invoke-virtual {p2}, Ljava/io/FileInputStream;->close()V

    .line 161
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    if-eqz p1, :cond_0

    .line 163
    invoke-static {v0, p0}, Lcom/metamoji/cm/CmUtils;->copyFile(Ljava/io/File;Ljava/io/File;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 170
    :cond_0
    invoke-static {v0}, Lcom/metamoji/cm/CmUtils;->deleteDirOrFile(Ljava/io/File;)Z

    return p1

    :catchall_0
    move-exception p0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 167
    :try_start_1
    invoke-static {p0}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 170
    invoke-static {v0}, Lcom/metamoji/cm/CmUtils;->deleteDirOrFile(Ljava/io/File;)Z

    const/4 p0, 0x0

    return p0

    :goto_0
    invoke-static {v0}, Lcom/metamoji/cm/CmUtils;->deleteDirOrFile(Ljava/io/File;)Z

    .line 171
    throw p0
.end method

.method private static encryptFiles([Ljava/io/File;Lcom/metamoji/cm/PBE;Ljava/io/File;)Z
    .locals 5

    .line 183
    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_2

    aget-object v3, p0, v2

    .line 184
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/metamoji/cv/xml/CvZippedXMLConvertUtils;->is_ignore_file(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_1

    .line 188
    :cond_0
    invoke-static {v3, p1, p2}, Lcom/metamoji/cv/xml/CvZippedXMLConvertUtils;->encryptFile(Ljava/io/File;Lcom/metamoji/cm/PBE;Ljava/io/File;)Z

    move-result v3

    if-nez v3, :cond_1

    return v1

    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x1

    return p0
.end method

.method public static exportModelManager(Lcom/metamoji/df/model/IModelManager;Landroid/net/Uri;Lcom/metamoji/cv/xml/CvZippedXMLKind;Ljava/util/Map;Lcom/metamoji/cm/PBE;Lcom/metamoji/nt/INtProgressUI;)Lcom/metamoji/cv/CvResult$Export;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/df/model/IModelManager;",
            "Landroid/net/Uri;",
            "Lcom/metamoji/cv/xml/CvZippedXMLKind;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/metamoji/cm/PBE;",
            "Lcom/metamoji/nt/INtProgressUI;",
            ")",
            "Lcom/metamoji/cv/CvResult$Export;"
        }
    .end annotation

    const-string v0, "failed to export : "

    .line 94
    invoke-static {}, Lcom/metamoji/cv/xml/CvZippedXMLConvertUtils;->createTempDirectory()Ljava/io/File;

    move-result-object v1

    if-nez v1, :cond_0

    .line 96
    sget-object p0, Lcom/metamoji/cv/CvResult$Export;->FailCreateTempDir:Lcom/metamoji/cv/CvResult$Export;

    return-object p0

    .line 102
    :cond_0
    :try_start_0
    sget-object v2, Lcom/metamoji/cv/xml/CvZippedXMLKind;->Hayabusadoc:Lcom/metamoji/cv/xml/CvZippedXMLKind;

    if-ne v2, p2, :cond_1

    .line 103
    new-instance v2, Lcom/metamoji/cv/xml/CvHayabusadocConvertContext;

    invoke-direct {v2, p0, v1}, Lcom/metamoji/cv/xml/CvHayabusadocConvertContext;-><init>(Lcom/metamoji/df/model/IModelManager;Ljava/io/File;)V

    goto :goto_0

    .line 104
    :cond_1
    sget-object v2, Lcom/metamoji/cv/xml/CvZippedXMLKind;->AtCollabo:Lcom/metamoji/cv/xml/CvZippedXMLKind;

    if-ne v2, p2, :cond_2

    .line 105
    new-instance v2, Lcom/metamoji/cv/xml/CvAtCollaboConvertContext;

    invoke-direct {v2, p0, v1}, Lcom/metamoji/cv/xml/CvAtCollaboConvertContext;-><init>(Lcom/metamoji/df/model/IModelManager;Ljava/io/File;)V

    goto :goto_0

    .line 106
    :cond_2
    sget-object v2, Lcom/metamoji/cv/xml/CvZippedXMLKind;->Part:Lcom/metamoji/cv/xml/CvZippedXMLKind;

    if-ne v2, p2, :cond_5

    .line 107
    new-instance v2, Lcom/metamoji/cv/xml/CvPartConvertContext;

    invoke-direct {v2, p0, v1}, Lcom/metamoji/cv/xml/CvPartConvertContext;-><init>(Lcom/metamoji/df/model/IModelManager;Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 114
    :goto_0
    :try_start_1
    iput-object p3, v2, Lcom/metamoji/cv/CvConvertContext;->options:Ljava/util/Map;

    if-eqz p5, :cond_3

    .line 116
    new-instance v3, Lcom/metamoji/cv/CvConvertProgress;

    invoke-direct {v3, p5}, Lcom/metamoji/cv/CvConvertProgress;-><init>(Lcom/metamoji/nt/INtProgressUI;)V

    iput-object v3, v2, Lcom/metamoji/cv/CvConvertContext;->progress:Lcom/metamoji/cv/CvConvertProgress;

    .line 117
    iget-object p5, v2, Lcom/metamoji/cv/CvConvertContext;->progress:Lcom/metamoji/cv/CvConvertProgress;

    invoke-virtual {p5}, Lcom/metamoji/cv/CvConvertProgress;->update()V

    .line 119
    :cond_3
    sget-object p5, Lcom/metamoji/cv/CvConvertType;->Outgoing:Lcom/metamoji/cv/CvConvertType;

    invoke-static {p2, p5}, Lcom/metamoji/nt/NtFactoryMaps;->createZippedXMLModelConverter(Lcom/metamoji/cv/xml/CvZippedXMLKind;Lcom/metamoji/cv/CvConvertType;)Lcom/metamoji/cv/CvModelConverter;

    move-result-object p2

    .line 120
    invoke-interface {p0}, Lcom/metamoji/df/model/IModelManager;->getRootModel()Lcom/metamoji/df/model/IModel;

    move-result-object p0

    invoke-virtual {p2, p0, v2}, Lcom/metamoji/cv/CvModelConverter;->exportModels(Lcom/metamoji/df/model/IModel;Lcom/metamoji/cv/CvConvertContext;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 130
    :try_start_2
    invoke-static {v1, p1, p4}, Lcom/metamoji/cv/xml/CvZippedXMLConvertUtils;->compressDocumentInDirectory(Ljava/io/File;Landroid/net/Uri;Lcom/metamoji/cm/PBE;)Lcom/metamoji/cv/CvResult$Export;

    move-result-object p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 132
    invoke-static {v1}, Lcom/metamoji/cm/CmUtils;->deleteDirOrFile(Ljava/io/File;)Z

    return-object p0

    :catch_0
    move-exception p0

    .line 122
    :try_start_3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/metamoji/cm/CmLog;->warn(Ljava/lang/String;)V

    if-eqz p3, :cond_4

    .line 123
    instance-of p1, p0, Lcom/metamoji/cm/CmException;

    if-eqz p1, :cond_4

    .line 124
    const-string p1, "converterErrorCode"

    check-cast p0, Lcom/metamoji/cm/CmException;

    invoke-virtual {p0}, Lcom/metamoji/cm/CmException;->getCode()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {p3, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    :cond_4
    sget-object p0, Lcom/metamoji/cv/CvResult$Export;->FailConvert:Lcom/metamoji/cv/CvResult$Export;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 132
    invoke-static {v1}, Lcom/metamoji/cm/CmUtils;->deleteDirOrFile(Ljava/io/File;)Z

    return-object p0

    .line 109
    :cond_5
    :try_start_4
    const-string p0, "invalid document kind"

    invoke-static {p0}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/String;)V

    .line 110
    sget-object p0, Lcom/metamoji/cv/CvResult$Export;->FailForInvalidArgument:Lcom/metamoji/cv/CvResult$Export;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 132
    invoke-static {v1}, Lcom/metamoji/cm/CmUtils;->deleteDirOrFile(Ljava/io/File;)Z

    return-object p0

    :catchall_0
    move-exception p0

    invoke-static {v1}, Lcom/metamoji/cm/CmUtils;->deleteDirOrFile(Ljava/io/File;)Z

    .line 133
    throw p0
.end method

.method public static exportModelManager(Lcom/metamoji/df/model/IModelManager;Ljava/io/File;Lcom/metamoji/cv/xml/CvZippedXMLKind;Ljava/util/Map;Lcom/metamoji/cm/PBE;Lcom/metamoji/nt/INtProgressUI;)Lcom/metamoji/cv/CvResult$Export;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/df/model/IModelManager;",
            "Ljava/io/File;",
            "Lcom/metamoji/cv/xml/CvZippedXMLKind;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/metamoji/cm/PBE;",
            "Lcom/metamoji/nt/INtProgressUI;",
            ")",
            "Lcom/metamoji/cv/CvResult$Export;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 138
    invoke-static {p1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p1

    invoke-static/range {p0 .. p5}, Lcom/metamoji/cv/xml/CvZippedXMLConvertUtils;->exportModelManager(Lcom/metamoji/df/model/IModelManager;Landroid/net/Uri;Lcom/metamoji/cv/xml/CvZippedXMLKind;Ljava/util/Map;Lcom/metamoji/cm/PBE;Lcom/metamoji/nt/INtProgressUI;)Lcom/metamoji/cv/CvResult$Export;

    move-result-object p0

    return-object p0
.end method

.method public static exportStateDataFile(Ljava/io/File;Landroid/net/Uri;Lcom/metamoji/cv/xml/CvZippedXMLKind;Ljava/util/Map;Lcom/metamoji/cm/PBE;Lcom/metamoji/nt/INtProgressUI;)Lcom/metamoji/cv/CvResult$Export;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Landroid/net/Uri;",
            "Lcom/metamoji/cv/xml/CvZippedXMLKind;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/metamoji/cm/PBE;",
            "Lcom/metamoji/nt/INtProgressUI;",
            ")",
            "Lcom/metamoji/cv/CvResult$Export;"
        }
    .end annotation

    .line 69
    invoke-static {p0}, Lcom/metamoji/df/model/ModelManagerFactory;->restoreModelManager(Ljava/io/File;)Lcom/metamoji/df/model/IModelManager;

    move-result-object p0

    if-nez p0, :cond_0

    .line 71
    sget-object p0, Lcom/metamoji/cv/CvResult$Export;->FailLoadStateDataFile:Lcom/metamoji/cv/CvResult$Export;

    return-object p0

    .line 75
    :cond_0
    :try_start_0
    invoke-static/range {p0 .. p5}, Lcom/metamoji/cv/xml/CvZippedXMLConvertUtils;->exportModelManager(Lcom/metamoji/df/model/IModelManager;Landroid/net/Uri;Lcom/metamoji/cv/xml/CvZippedXMLKind;Ljava/util/Map;Lcom/metamoji/cm/PBE;Lcom/metamoji/nt/INtProgressUI;)Lcom/metamoji/cv/CvResult$Export;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 77
    invoke-interface {p0}, Lcom/metamoji/df/model/IModelManager;->close()V

    return-object p1

    :catchall_0
    move-exception v0

    move-object p1, v0

    invoke-interface {p0}, Lcom/metamoji/df/model/IModelManager;->close()V

    .line 78
    throw p1
.end method

.method private static fillBuffFromStream([BLjava/io/InputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 459
    array-length v0, p0

    .line 462
    :cond_0
    array-length v1, p0

    sub-int/2addr v1, v0

    invoke-virtual {p1, p0, v1, v0}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    sub-int/2addr v0, v1

    if-gtz v0, :cond_0

    return-void
.end method

.method public static importArchivedDoc(Ljava/io/File;Lcom/metamoji/df/model/IModelManager;Lcom/metamoji/cv/xml/CvZippedXMLKind;Ljava/util/Map;Lcom/metamoji/nt/INtProgressUI;)Lcom/metamoji/cv/CvResult$Import;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Lcom/metamoji/df/model/IModelManager;",
            "Lcom/metamoji/cv/xml/CvZippedXMLKind;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/metamoji/nt/INtProgressUI;",
            ")",
            "Lcom/metamoji/cv/CvResult$Import;"
        }
    .end annotation

    const-string v0, "failed to import : "

    .line 381
    invoke-static {}, Lcom/metamoji/cv/xml/CvZippedXMLConvertUtils;->createTempDirectory()Ljava/io/File;

    move-result-object v1

    if-nez v1, :cond_0

    .line 383
    sget-object p0, Lcom/metamoji/cv/CvResult$Import;->FailCreateTempDir:Lcom/metamoji/cv/CvResult$Import;

    return-object p0

    .line 388
    :cond_0
    :try_start_0
    invoke-static {p0, v1, p3}, Lcom/metamoji/cv/xml/CvZippedXMLConvertUtils;->uncompressDocument(Ljava/io/File;Ljava/io/File;Ljava/util/Map;)Lcom/metamoji/cv/CvResult$Import;

    move-result-object p0

    .line 389
    sget-object v2, Lcom/metamoji/cv/CvResult$Import;->Success:Lcom/metamoji/cv/CvResult$Import;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eq v2, p0, :cond_1

    .line 446
    invoke-static {v1}, Lcom/metamoji/cm/CmUtils;->deleteDirOrFile(Ljava/io/File;)Z

    return-object p0

    .line 395
    :cond_1
    :try_start_1
    sget-object p0, Lcom/metamoji/cv/xml/CvZippedXMLKind;->Hayabusadoc:Lcom/metamoji/cv/xml/CvZippedXMLKind;

    if-eq p0, p2, :cond_2

    sget-object p0, Lcom/metamoji/cv/xml/CvZippedXMLKind;->AtCollabo:Lcom/metamoji/cv/xml/CvZippedXMLKind;

    if-ne p0, p2, :cond_4

    .line 397
    :cond_2
    new-instance p0, Ljava/io/File;

    const-string p2, "sharesettings.1.xml"

    invoke-direct {p0, v1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 398
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_3

    .line 405
    sget-object p2, Lcom/metamoji/cv/xml/CvZippedXMLKind;->AtCollabo:Lcom/metamoji/cv/xml/CvZippedXMLKind;

    goto :goto_0

    .line 407
    :cond_3
    sget-object p2, Lcom/metamoji/cv/xml/CvZippedXMLKind;->Hayabusadoc:Lcom/metamoji/cv/xml/CvZippedXMLKind;

    .line 413
    :cond_4
    :goto_0
    sget-object p0, Lcom/metamoji/cv/xml/CvZippedXMLKind;->Hayabusadoc:Lcom/metamoji/cv/xml/CvZippedXMLKind;

    if-ne p0, p2, :cond_5

    .line 414
    new-instance p0, Lcom/metamoji/cv/xml/CvHayabusadocConvertContext;

    invoke-direct {p0, p1, v1}, Lcom/metamoji/cv/xml/CvHayabusadocConvertContext;-><init>(Lcom/metamoji/df/model/IModelManager;Ljava/io/File;)V

    goto :goto_1

    .line 415
    :cond_5
    sget-object p0, Lcom/metamoji/cv/xml/CvZippedXMLKind;->AtCollabo:Lcom/metamoji/cv/xml/CvZippedXMLKind;

    if-ne p0, p2, :cond_6

    .line 416
    new-instance p0, Lcom/metamoji/cv/xml/CvAtCollaboConvertContext;

    invoke-direct {p0, p1, v1}, Lcom/metamoji/cv/xml/CvAtCollaboConvertContext;-><init>(Lcom/metamoji/df/model/IModelManager;Ljava/io/File;)V

    goto :goto_1

    .line 417
    :cond_6
    sget-object p0, Lcom/metamoji/cv/xml/CvZippedXMLKind;->Part:Lcom/metamoji/cv/xml/CvZippedXMLKind;

    if-ne p0, p2, :cond_9

    .line 418
    new-instance p0, Lcom/metamoji/cv/xml/CvPartConvertContext;

    invoke-direct {p0, p1, v1}, Lcom/metamoji/cv/xml/CvPartConvertContext;-><init>(Lcom/metamoji/df/model/IModelManager;Ljava/io/File;)V

    :goto_1
    if-eqz p4, :cond_7

    .line 425
    new-instance v2, Lcom/metamoji/cv/CvConvertProgress;

    invoke-direct {v2, p4}, Lcom/metamoji/cv/CvConvertProgress;-><init>(Lcom/metamoji/nt/INtProgressUI;)V

    iput-object v2, p0, Lcom/metamoji/cv/CvConvertContext;->progress:Lcom/metamoji/cv/CvConvertProgress;

    .line 426
    iget-object p4, p0, Lcom/metamoji/cv/CvConvertContext;->progress:Lcom/metamoji/cv/CvConvertProgress;

    invoke-virtual {p4}, Lcom/metamoji/cv/CvConvertProgress;->update()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 430
    :cond_7
    :try_start_2
    iput-object p3, p0, Lcom/metamoji/cv/CvConvertContext;->options:Ljava/util/Map;

    .line 432
    sget-object p4, Lcom/metamoji/cv/CvConvertType;->Incoming:Lcom/metamoji/cv/CvConvertType;

    invoke-static {p2, p4}, Lcom/metamoji/nt/NtFactoryMaps;->createZippedXMLModelConverter(Lcom/metamoji/cv/xml/CvZippedXMLKind;Lcom/metamoji/cv/CvConvertType;)Lcom/metamoji/cv/CvModelConverter;

    move-result-object p2

    .line 433
    const-string p4, "manifest.1.xml"

    invoke-virtual {p2, p4, p0}, Lcom/metamoji/cv/CvModelConverter;->importModels(Ljava/lang/Object;Lcom/metamoji/cv/CvConvertContext;)Lcom/metamoji/df/model/IModel;

    move-result-object p2

    .line 434
    invoke-interface {p1, p2}, Lcom/metamoji/df/model/IModelManager;->replaceRootModel(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/df/model/IModel;

    .line 435
    new-instance p2, Lcom/metamoji/df/model/ModelManagerSaveContext;

    invoke-direct {p2}, Lcom/metamoji/df/model/ModelManagerSaveContext;-><init>()V

    invoke-interface {p1, p2}, Lcom/metamoji/df/model/IModelManager;->ensureSavedToStateData(Lcom/metamoji/df/model/ModelManagerSaveContext;)V

    .line 436
    invoke-virtual {p0}, Lcom/metamoji/cv/CvConvertContext;->fillProgress()V

    .line 437
    sget-object p0, Lcom/metamoji/cv/CvResult$Import;->Success:Lcom/metamoji/cv/CvResult$Import;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 446
    invoke-static {v1}, Lcom/metamoji/cm/CmUtils;->deleteDirOrFile(Ljava/io/File;)Z

    return-object p0

    :catch_0
    move-exception p0

    if-eqz p3, :cond_8

    .line 439
    :try_start_3
    instance-of p1, p0, Lcom/metamoji/cm/CmException;

    if-eqz p1, :cond_8

    .line 440
    const-string p1, "converterErrorCode"

    move-object p2, p0

    check-cast p2, Lcom/metamoji/cm/CmException;

    invoke-virtual {p2}, Lcom/metamoji/cm/CmException;->getCode()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p3, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 442
    :cond_8
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/metamoji/cm/CmLog;->warn(Ljava/lang/String;)V

    .line 443
    sget-object p0, Lcom/metamoji/cv/CvResult$Import;->FailConvert:Lcom/metamoji/cv/CvResult$Import;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 446
    invoke-static {v1}, Lcom/metamoji/cm/CmUtils;->deleteDirOrFile(Ljava/io/File;)Z

    return-object p0

    .line 420
    :cond_9
    :try_start_4
    const-string p0, "invalid document kind"

    invoke-static {p0}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/String;)V

    .line 421
    sget-object p0, Lcom/metamoji/cv/CvResult$Import;->FailForInvalidArgument:Lcom/metamoji/cv/CvResult$Import;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 446
    invoke-static {v1}, Lcom/metamoji/cm/CmUtils;->deleteDirOrFile(Ljava/io/File;)Z

    return-object p0

    :catchall_0
    move-exception p0

    invoke-static {v1}, Lcom/metamoji/cm/CmUtils;->deleteDirOrFile(Ljava/io/File;)Z

    .line 447
    throw p0
.end method

.method public static importArchivedDoc(Ljava/io/File;Ljava/io/File;Lcom/metamoji/cv/xml/CvZippedXMLKind;Ljava/util/Map;Lcom/metamoji/nt/INtProgressUI;)Lcom/metamoji/cv/CvResult$Import;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/io/File;",
            "Lcom/metamoji/cv/xml/CvZippedXMLKind;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/metamoji/nt/INtProgressUI;",
            ")",
            "Lcom/metamoji/cv/CvResult$Import;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 363
    invoke-static {p1, v0}, Lcom/metamoji/df/model/ModelManagerFactory;->newModelManager(Ljava/io/File;Ljava/lang/String;)Lcom/metamoji/df/model/IModelManager;

    move-result-object p1

    .line 365
    :try_start_0
    invoke-static {p0, p1, p2, p3, p4}, Lcom/metamoji/cv/xml/CvZippedXMLConvertUtils;->importArchivedDoc(Ljava/io/File;Lcom/metamoji/df/model/IModelManager;Lcom/metamoji/cv/xml/CvZippedXMLKind;Ljava/util/Map;Lcom/metamoji/nt/INtProgressUI;)Lcom/metamoji/cv/CvResult$Import;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 367
    invoke-interface {p1}, Lcom/metamoji/df/model/IModelManager;->close()V

    return-object p0

    :catchall_0
    move-exception p0

    invoke-interface {p1}, Lcom/metamoji/df/model/IModelManager;->close()V

    .line 368
    throw p0
.end method

.method private static is_ignore_file(Ljava/lang/String;)Z
    .locals 1

    .line 143
    const-string v0, "signature"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "encrypted"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public static uncompressDocument(Ljava/io/File;Ljava/io/File;Ljava/util/Map;)Lcom/metamoji/cv/CvResult$Import;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/io/File;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/metamoji/cv/CvResult$Import;"
        }
    .end annotation

    const/4 v0, 0x1

    .line 648
    invoke-static {p0, p1, p2, v0}, Lcom/metamoji/cv/xml/CvZippedXMLConvertUtils;->uncompressDocument(Ljava/io/File;Ljava/io/File;Ljava/util/Map;Z)Lcom/metamoji/cv/CvResult$Import;

    move-result-object p0

    return-object p0
.end method

.method public static uncompressDocument(Ljava/io/File;Ljava/io/File;Ljava/util/Map;Z)Lcom/metamoji/cv/CvResult$Import;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/io/File;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;Z)",
            "Lcom/metamoji/cv/CvResult$Import;"
        }
    .end annotation

    move-object/from16 v1, p2

    .line 485
    invoke-static {}, Lcom/metamoji/cm/CmByteBuffer;->getBuffer()[B

    move-result-object v2

    const/4 v3, 0x0

    .line 492
    :try_start_0
    new-instance v4, Ljava/util/zip/ZipFile;

    invoke-direct {v4, p0}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_a
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    .line 493
    :try_start_1
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 496
    invoke-virtual {v4}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    move-result-object v5
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_9
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    move-object v6, v3

    move-object v7, v6

    move-object v8, v7

    .line 499
    :goto_0
    :try_start_2
    invoke-interface {v5}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v9

    const/4 v10, 0x0

    if-eqz v9, :cond_3

    .line 500
    invoke-interface {v5}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/zip/ZipEntry;

    .line 501
    new-instance v11, Ljava/io/File;

    invoke-virtual {v9}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, p1, v12}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 503
    invoke-virtual {v9}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v12

    const-string v13, "signature"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_0

    const/16 v8, 0x10

    .line 505
    new-array v8, v8, [B

    .line 506
    invoke-virtual {v4, v9}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v9

    .line 507
    invoke-static {v8, v9}, Lcom/metamoji/cv/xml/CvZippedXMLConvertUtils;->fillBuffFromStream([BLjava/io/InputStream;)V

    .line 508
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V

    goto :goto_0

    .line 509
    :cond_0
    invoke-virtual {v9}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v12

    const-string v13, "encrypted"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1

    const/16 v7, 0x20

    .line 511
    new-array v7, v7, [B

    .line 512
    invoke-virtual {v4, v9}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v9

    .line 513
    invoke-static {v7, v9}, Lcom/metamoji/cv/xml/CvZippedXMLConvertUtils;->fillBuffFromStream([BLjava/io/InputStream;)V

    .line 514
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V

    goto :goto_0

    .line 516
    :cond_1
    invoke-virtual {v9}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {p0, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 517
    new-instance v12, Ljava/io/BufferedOutputStream;

    new-instance v13, Ljava/io/FileOutputStream;

    invoke-direct {v13, v11}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v12, v13}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_8
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 522
    :try_start_3
    new-instance v6, Ljava/io/BufferedInputStream;

    invoke-virtual {v4, v9}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v9

    invoke-direct {v6, v9}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 523
    :goto_1
    array-length v9, v2

    invoke-virtual {v6, v2, v10, v9}, Ljava/io/BufferedInputStream;->read([BII)I

    move-result v9

    if-ltz v9, :cond_2

    .line 524
    invoke-virtual {v12, v2, v10, v9}, Ljava/io/BufferedOutputStream;->write([BII)V

    goto :goto_1

    .line 527
    :cond_2
    invoke-virtual {v6}, Ljava/io/BufferedInputStream;->close()V

    .line 528
    invoke-virtual {v12}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object v6, v3

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object p0, v0

    move-object v5, v3

    move-object v3, v4

    move-object v6, v12

    goto/16 :goto_f

    :catch_0
    move-exception v0

    move-object p0, v0

    move-object v5, v3

    move-object v3, v4

    move-object v6, v12

    goto/16 :goto_b

    .line 537
    :cond_3
    :try_start_4
    invoke-virtual {v4}, Ljava/util/zip/ZipFile;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_8
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 543
    :try_start_5
    new-instance v4, Lcom/metamoji/cv/xml/CvZippedXMLConvertUtils$2;

    invoke-direct {v4}, Lcom/metamoji/cv/xml/CvZippedXMLConvertUtils$2;-><init>()V

    invoke-static {p0, v4}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    if-eqz p3, :cond_9

    .line 552
    sget-object v4, Lcom/metamoji/cm/HashGenerator$Algorithm;->MD5:Lcom/metamoji/cm/HashGenerator$Algorithm;

    invoke-static {v4}, Lcom/metamoji/cm/HashGenerator;->createHashGenerator(Lcom/metamoji/cm/HashGenerator$Algorithm;)Lcom/metamoji/cm/HashGenerator;

    move-result-object v4

    if-nez v4, :cond_5

    .line 554
    sget-object p0, Lcom/metamoji/cv/CvResult$Import;->FailForInvalidArgument:Lcom/metamoji/cv/CvResult$Import;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_7
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 600
    invoke-static {v2}, Lcom/metamoji/cm/CmByteBuffer;->releaseBuffer([B)V

    if-eqz v6, :cond_4

    .line 626
    :try_start_6
    invoke-virtual {v6}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_2

    :catch_1
    move-exception v0

    .line 628
    invoke-static {v0}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;)V

    :cond_4
    :goto_2
    return-object p0

    .line 558
    :cond_5
    :try_start_7
    invoke-virtual {v4}, Lcom/metamoji/cm/HashGenerator;->appendSecretSeed()V

    .line 559
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 560
    new-instance v9, Ljava/io/FileInputStream;

    new-instance v11, Ljava/io/File;

    invoke-direct {v11, p1, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v9, v11}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 561
    new-instance v5, Ljava/io/BufferedInputStream;

    invoke-direct {v5, v9}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 562
    :goto_4
    :try_start_8
    array-length v11, v2

    invoke-virtual {v5, v2, v10, v11}, Ljava/io/BufferedInputStream;->read([BII)I

    move-result v11

    if-ltz v11, :cond_6

    .line 563
    invoke-virtual {v4, v2, v10, v11}, Lcom/metamoji/cm/HashGenerator;->append([BII)V

    goto :goto_4

    .line 565
    :cond_6
    invoke-virtual {v5}, Ljava/io/BufferedInputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    .line 567
    :try_start_9
    invoke-virtual {v9}, Ljava/io/FileInputStream;->close()V

    goto :goto_3

    :catch_2
    move-exception v0

    move-object p0, v0

    goto/16 :goto_b

    .line 571
    :cond_7
    invoke-virtual {v4}, Lcom/metamoji/cm/HashGenerator;->getHash()[B

    move-result-object p0

    invoke-static {p0, v8}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p0

    if-nez p0, :cond_9

    .line 572
    sget-object p0, Lcom/metamoji/cv/CvResult$Import;->FailChecksum:Lcom/metamoji/cv/CvResult$Import;
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_7
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 600
    invoke-static {v2}, Lcom/metamoji/cm/CmByteBuffer;->releaseBuffer([B)V

    if-eqz v6, :cond_8

    .line 626
    :try_start_a
    invoke-virtual {v6}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_3

    goto :goto_5

    :catch_3
    move-exception v0

    .line 628
    invoke-static {v0}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;)V

    :cond_8
    :goto_5
    return-object p0

    :cond_9
    if-eqz v7, :cond_e

    .line 577
    :try_start_b
    invoke-static {v7}, Lcom/metamoji/ui/dialog/UiPasswordDialog;->getDecrypter([B)Lcom/metamoji/cm/PBE;

    move-result-object p0

    if-nez p0, :cond_b

    .line 579
    const-string p0, "converterErrorCode"

    sget-object v0, Lcom/metamoji/nt/NtErrorCode;->ERROR_CANCEL_PASSWORD_AUTHENTICATION:Lcom/metamoji/nt/NtErrorCode;

    invoke-virtual {v0}, Lcom/metamoji/nt/NtErrorCode;->intValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 580
    sget-object p0, Lcom/metamoji/cv/CvResult$Import;->FailPassword:Lcom/metamoji/cv/CvResult$Import;
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_7
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    .line 600
    invoke-static {v2}, Lcom/metamoji/cm/CmByteBuffer;->releaseBuffer([B)V

    if-eqz v6, :cond_a

    .line 626
    :try_start_c
    invoke-virtual {v6}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_4

    goto :goto_6

    :catch_4
    move-exception v0

    .line 628
    invoke-static {v0}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;)V

    :cond_a
    :goto_6
    return-object p0

    :cond_b
    if-eqz v1, :cond_c

    .line 584
    :try_start_d
    const-string v4, "doc_decrypter"

    invoke-interface {v1, v4, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 588
    :cond_c
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 589
    invoke-static {v1, p0, p1}, Lcom/metamoji/cv/xml/CvZippedXMLConvertUtils;->decryptFiles([Ljava/io/File;Lcom/metamoji/cm/PBE;Ljava/io/File;)Z

    move-result p0

    if-nez p0, :cond_e

    .line 590
    sget-object p0, Lcom/metamoji/cv/CvResult$Import;->FailForUnknownError:Lcom/metamoji/cv/CvResult$Import;
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_7
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    .line 600
    invoke-static {v2}, Lcom/metamoji/cm/CmByteBuffer;->releaseBuffer([B)V

    if-eqz v6, :cond_d

    .line 626
    :try_start_e
    invoke-virtual {v6}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_5

    goto :goto_7

    :catch_5
    move-exception v0

    .line 628
    invoke-static {v0}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;)V

    :cond_d
    :goto_7
    return-object p0

    .line 593
    :cond_e
    :try_start_f
    sget-object p0, Lcom/metamoji/cv/CvResult$Import;->Success:Lcom/metamoji/cv/CvResult$Import;
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_7
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    .line 600
    invoke-static {v2}, Lcom/metamoji/cm/CmByteBuffer;->releaseBuffer([B)V

    if-eqz v6, :cond_f

    .line 626
    :try_start_10
    invoke-virtual {v6}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_6

    goto :goto_8

    :catch_6
    move-exception v0

    .line 628
    invoke-static {v0}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;)V

    :cond_f
    :goto_8
    return-object p0

    :catchall_1
    move-exception v0

    move-object p0, v0

    move-object v5, v3

    goto/16 :goto_f

    :catch_7
    move-exception v0

    move-object p0, v0

    move-object v5, v3

    goto :goto_b

    :catchall_2
    move-exception v0

    move-object p0, v0

    move-object v5, v3

    goto :goto_9

    :catch_8
    move-exception v0

    move-object p0, v0

    move-object v5, v3

    goto :goto_a

    :catchall_3
    move-exception v0

    move-object p0, v0

    move-object v5, v3

    move-object v6, v5

    :goto_9
    move-object v3, v4

    goto :goto_f

    :catch_9
    move-exception v0

    move-object p0, v0

    move-object v5, v3

    move-object v6, v5

    :goto_a
    move-object v3, v4

    goto :goto_b

    :catchall_4
    move-exception v0

    move-object p0, v0

    move-object v5, v3

    move-object v6, v5

    goto :goto_f

    :catch_a
    move-exception v0

    move-object p0, v0

    move-object v5, v3

    move-object v6, v5

    .line 597
    :goto_b
    :try_start_11
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "zip read error: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/String;)V

    .line 598
    sget-object p0, Lcom/metamoji/cv/CvResult$Import;->FailReadZip:Lcom/metamoji/cv/CvResult$Import;
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_5

    .line 600
    invoke-static {v2}, Lcom/metamoji/cm/CmByteBuffer;->releaseBuffer([B)V

    if-eqz v3, :cond_10

    .line 618
    :try_start_12
    invoke-virtual {v3}, Ljava/util/zip/ZipFile;->close()V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_b

    goto :goto_c

    :catch_b
    move-exception v0

    .line 620
    invoke-static {v0}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;)V

    :cond_10
    :goto_c
    if-eqz v6, :cond_11

    .line 626
    :try_start_13
    invoke-virtual {v6}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_c

    goto :goto_d

    :catch_c
    move-exception v0

    .line 628
    invoke-static {v0}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;)V

    :cond_11
    :goto_d
    if-eqz v5, :cond_12

    .line 633
    :try_start_14
    invoke-virtual {v5}, Ljava/io/BufferedInputStream;->close()V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_d

    goto :goto_e

    :catch_d
    move-exception v0

    .line 635
    invoke-static {v0}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;)V

    :cond_12
    :goto_e
    return-object p0

    :catchall_5
    move-exception v0

    move-object p0, v0

    .line 600
    :goto_f
    invoke-static {v2}, Lcom/metamoji/cm/CmByteBuffer;->releaseBuffer([B)V

    if-eqz v3, :cond_13

    .line 618
    :try_start_15
    invoke-virtual {v3}, Ljava/util/zip/ZipFile;->close()V
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_15} :catch_e

    goto :goto_10

    :catch_e
    move-exception v0

    .line 620
    invoke-static {v0}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;)V

    :cond_13
    :goto_10
    if-eqz v6, :cond_14

    .line 626
    :try_start_16
    invoke-virtual {v6}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_16} :catch_f

    goto :goto_11

    :catch_f
    move-exception v0

    .line 628
    invoke-static {v0}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;)V

    :cond_14
    :goto_11
    if-eqz v5, :cond_15

    .line 633
    :try_start_17
    invoke-virtual {v5}, Ljava/io/BufferedInputStream;->close()V
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_17} :catch_10

    goto :goto_12

    :catch_10
    move-exception v0

    .line 635
    invoke-static {v0}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;)V

    .line 638
    :cond_15
    :goto_12
    throw p0
.end method

.method public static uncompressDocumentNoCkeckAsync(Ljava/io/File;Ljava/io/File;Ljava/util/Map;)Lcom/metamoji/cv/CvResult$Import;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/io/File;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/metamoji/cv/CvResult$Import;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 658
    invoke-static {p0, p1, p2, v0}, Lcom/metamoji/cv/xml/CvZippedXMLConvertUtils;->uncompressDocument(Ljava/io/File;Ljava/io/File;Ljava/util/Map;Z)Lcom/metamoji/cv/CvResult$Import;

    move-result-object p0

    return-object p0
.end method
