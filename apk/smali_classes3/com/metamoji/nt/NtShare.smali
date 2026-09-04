.class public Lcom/metamoji/nt/NtShare;
.super Ljava/lang/Object;
.source "NtShare.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/nt/NtShare$SendAction;,
        Lcom/metamoji/nt/NtShare$ISendAction;,
        Lcom/metamoji/nt/NtShare$WebdavAction;,
        Lcom/metamoji/nt/NtShare$SaveAction;,
        Lcom/metamoji/nt/NtShare$MultiUserPagePurgeableChecker;,
        Lcom/metamoji/nt/NtShare$PrintAction;,
        Lcom/metamoji/nt/NtShare$INtShareCreateFile;,
        Lcom/metamoji/nt/NtShare$ViewAction;
    }
.end annotation


# static fields
.field static final TEMP_FOLDER_NAME:Ljava/lang/String; = ".sharedData"

.field static final _fileNameCheckArray:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field static _tempFolder:Ljava/io/File;

.field static s_saveFilename:Ljava/lang/String;

.field static s_saveToFile:Ljava/io/File;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1511
    new-instance v0, Lcom/metamoji/nt/NtShare$17;

    invoke-direct {v0}, Lcom/metamoji/nt/NtShare$17;-><init>()V

    sput-object v0, Lcom/metamoji/nt/NtShare;->_fileNameCheckArray:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static ExportWebDavAsAtdoc(Lcom/metamoji/nt/NtDocument;Lcom/metamoji/media/voice/controller/VcRecordingsDef$VcConvOption;Ljava/lang/String;)V
    .locals 1

    .line 659
    sget-object v0, Lcom/metamoji/nt/NtShare$WebdavAction;->instance:Lcom/metamoji/nt/NtShare$ISendAction;

    invoke-static {p0, p1, p2, v0}, Lcom/metamoji/nt/NtShare;->shareAsAtdoc(Lcom/metamoji/nt/NtDocument;Lcom/metamoji/media/voice/controller/VcRecordingsDef$VcConvOption;Ljava/lang/String;Lcom/metamoji/nt/NtShare$ISendAction;)V

    return-void
.end method

.method public static ExportWebDavAsMultiUserAtdoc(Lcom/metamoji/nt/NtDocument;Lcom/metamoji/media/voice/controller/VcRecordingsDef$VcConvOption;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/nt/NtDocument;",
            "Lcom/metamoji/media/voice/controller/VcRecordingsDef$VcConvOption;",
            "Ljava/util/List<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;)V"
        }
    .end annotation

    .line 729
    sget-object v0, Lcom/metamoji/nt/NtShare$WebdavAction;->instance:Lcom/metamoji/nt/NtShare$ISendAction;

    invoke-static {p0, p1, p2, v0}, Lcom/metamoji/nt/NtShare;->shareAsMultiUserAtdoc(Lcom/metamoji/nt/NtDocument;Lcom/metamoji/media/voice/controller/VcRecordingsDef$VcConvOption;Ljava/util/List;Lcom/metamoji/nt/NtShare$ISendAction;)V

    return-void
.end method

.method public static ExportWebDavAsMultiUserPdf(Lcom/metamoji/nt/NtDocument;Ljava/util/List;Z[I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/nt/NtDocument;",
            "Ljava/util/List<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;Z[I)V"
        }
    .end annotation

    .line 508
    sget-object v0, Lcom/metamoji/nt/NtShare$WebdavAction;->instance:Lcom/metamoji/nt/NtShare$ISendAction;

    invoke-static {p0, p1, p2, p3, v0}, Lcom/metamoji/nt/NtShare;->shareAsMultiUserPdf(Lcom/metamoji/nt/NtDocument;Ljava/util/List;Z[ILcom/metamoji/nt/NtShare$ISendAction;)V

    return-void
.end method

.method public static ExportWebDavAsPdf(Lcom/metamoji/nt/NtDocument;[ILjava/lang/String;)V
    .locals 1

    .line 451
    sget-object v0, Lcom/metamoji/nt/NtShare$WebdavAction;->instance:Lcom/metamoji/nt/NtShare$ISendAction;

    invoke-static {p0, p1, p2, v0}, Lcom/metamoji/nt/NtShare;->shareAsPdf(Lcom/metamoji/nt/NtDocument;[ILjava/lang/String;Lcom/metamoji/nt/NtShare$ISendAction;)V

    return-void
.end method

.method public static ExportWebDavAsTextFile(Ljava/lang/String;Lcom/metamoji/nt/NtDocument;Ljava/lang/String;)V
    .locals 1

    .line 934
    sget-object v0, Lcom/metamoji/nt/NtShare$WebdavAction;->instance:Lcom/metamoji/nt/NtShare$ISendAction;

    invoke-static {p0, p1, p2, v0}, Lcom/metamoji/nt/NtShare;->shareAsTextFile(Ljava/lang/String;Lcom/metamoji/nt/NtDocument;Ljava/lang/String;Lcom/metamoji/nt/NtShare$ISendAction;)V

    return-void
.end method

.method public static ExportWebDavCurrentPageAsImage(Lcom/metamoji/nt/NtDocument;Ljava/lang/String;)V
    .locals 1

    .line 106
    sget-object v0, Lcom/metamoji/nt/NtShare$WebdavAction;->instance:Lcom/metamoji/nt/NtShare$ISendAction;

    invoke-static {p0, p1, v0}, Lcom/metamoji/nt/NtShare;->shareCurrentPageAsImage(Lcom/metamoji/nt/NtDocument;Ljava/lang/String;Lcom/metamoji/nt/NtShare$ISendAction;)V

    return-void
.end method

.method public static ExportWebDavMultiUserPageImagesAsOneFile(Lcom/metamoji/nt/NtDocument;Ljava/util/List;II)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/nt/NtDocument;",
            "Ljava/util/List<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;II)V"
        }
    .end annotation

    .line 219
    sget-object v0, Lcom/metamoji/nt/NtShare$WebdavAction;->instance:Lcom/metamoji/nt/NtShare$ISendAction;

    invoke-static {p0, p1, p2, p3, v0}, Lcom/metamoji/nt/NtShare;->shareMultiUserPageImagesAsOneFile(Lcom/metamoji/nt/NtDocument;Ljava/util/List;IILcom/metamoji/nt/NtShare$ISendAction;)V

    return-void
.end method

.method public static ExportWebDavPageImagesAsOneFile(Lcom/metamoji/nt/NtDocument;IILjava/lang/String;)V
    .locals 1

    .line 141
    sget-object v0, Lcom/metamoji/nt/NtShare$WebdavAction;->instance:Lcom/metamoji/nt/NtShare$ISendAction;

    invoke-static {p0, p1, p2, p3, v0}, Lcom/metamoji/nt/NtShare;->sharePageImagesAsOneFile(Lcom/metamoji/nt/NtDocument;IILjava/lang/String;Lcom/metamoji/nt/NtShare$ISendAction;)V

    return-void
.end method

.method public static createZippedFile(Lcom/metamoji/nt/NtDocument;ILcom/metamoji/nt/NtShare$INtShareCreateFile;Ljava/lang/String;)Ljava/io/File;
    .locals 2

    if-eqz p3, :cond_0

    goto :goto_0

    .line 1732
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/nt/NtDocument;->getDocumentTitleForFileName()Ljava/lang/String;

    move-result-object p3

    .line 1733
    :goto_0
    invoke-static {}, Lcom/metamoji/nt/NtShare;->getTempFolder()Ljava/io/File;

    move-result-object p0

    .line 1734
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, ".zip"

    filled-new-array {p3, v1}, [Ljava/lang/Object;

    move-result-object p3

    const-string v1, "%s%s"

    invoke-static {v0, v1, p3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    .line 1735
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0, p3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1736
    new-instance p3, Ljava/io/File;

    const-string v1, "contents"

    invoke-direct {p3, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1737
    invoke-virtual {p3}, Ljava/io/File;->mkdirs()Z

    .line 1739
    invoke-static {v0, p3, p1, p2}, Lcom/metamoji/nt/NtShare;->createZippedFile(Ljava/io/File;Ljava/io/File;ILcom/metamoji/nt/NtShare$INtShareCreateFile;)Z

    move-result p0

    if-nez p0, :cond_1

    const/4 p0, 0x0

    return-object p0

    :cond_1
    return-object v0
.end method

.method public static createZippedFile(Ljava/io/File;Ljava/io/File;ILcom/metamoji/nt/NtShare$INtShareCreateFile;)Z
    .locals 8

    .line 1756
    invoke-static {}, Lcom/metamoji/cm/CmByteBuffer;->getBuffer()[B

    move-result-object v0

    const/4 v1, 0x0

    .line 1759
    :try_start_0
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 1761
    :try_start_1
    new-instance p0, Ljava/util/zip/ZipOutputStream;

    invoke-direct {p0, v2}, Ljava/util/zip/ZipOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move v3, v1

    :goto_0
    if-ge v3, p2, :cond_2

    .line 1765
    :try_start_2
    invoke-interface {p3, p1, v3}, Lcom/metamoji/nt/NtShare$INtShareCreateFile;->perform(Ljava/io/File;I)Ljava/io/File;

    move-result-object v4

    if-nez v4, :cond_0

    .line 1767
    const-string v4, "Can\'t create one file in zipping. %d"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    .line 1773
    :cond_0
    :try_start_3
    new-instance v5, Ljava/io/BufferedInputStream;

    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v5, v6}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 1774
    new-instance v6, Ljava/util/zip/ZipEntry;

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v6}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    .line 1777
    :goto_1
    array-length v6, v0

    invoke-virtual {v5, v0, v1, v6}, Ljava/io/BufferedInputStream;->read([BII)I

    move-result v6

    if-ltz v6, :cond_1

    .line 1778
    invoke-virtual {p0, v0, v1, v6}, Ljava/util/zip/ZipOutputStream;->write([BII)V

    goto :goto_1

    .line 1780
    :cond_1
    invoke-virtual {p0}, Ljava/util/zip/ZipOutputStream;->closeEntry()V

    .line 1781
    invoke-virtual {v5}, Ljava/io/BufferedInputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    :catch_0
    move-exception v5

    .line 1783
    :try_start_4
    const-string v6, "Can\'t write file in zipping. %s"

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    invoke-static {v5, v6, v4}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 1788
    :try_start_5
    invoke-virtual {p0}, Ljava/util/zip/ZipOutputStream;->close()V

    .line 1789
    throw p1

    .line 1788
    :cond_2
    invoke-virtual {p0}, Ljava/util/zip/ZipOutputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 1791
    :try_start_6
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    const/4 p0, 0x1

    return p0

    :catchall_1
    move-exception p0

    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    .line 1792
    throw p0
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    :catch_1
    move-exception p0

    .line 1795
    const-string p1, "Can\'t create zip file."

    invoke-static {p0, p1}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;Ljava/lang/String;)V

    return v1
.end method

.method static getAllPagesAsImage(Lcom/metamoji/nt/NtDocument;Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/nt/NtDocument;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .line 1660
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 1661
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/metamoji/nt/NtDocument;->getMainSheet()Lcom/metamoji/nt/NtNoteController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/metamoji/nt/NtNoteController;->getNumberOfPages()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 1662
    invoke-virtual {p0}, Lcom/metamoji/nt/NtDocument;->getMainSheet()Lcom/metamoji/nt/NtNoteController;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/metamoji/nt/NtNoteController;->getPage(I)Lcom/metamoji/nt/NtPageController;

    move-result-object v2

    add-int/lit8 v1, v1, 0x1

    .line 1663
    invoke-static {v2, v1, p1}, Lcom/metamoji/nt/NtShare;->getImageAtPage(Lcom/metamoji/nt/NtPageController;ILjava/lang/String;)Ljava/io/File;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1665
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method static getCurrentPageAsImage(Lcom/metamoji/nt/NtDocument;Ljava/lang/String;)Ljava/io/File;
    .locals 1

    .line 1653
    invoke-virtual {p0}, Lcom/metamoji/nt/NtDocument;->getMainSheet()Lcom/metamoji/nt/NtNoteController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/nt/NtNoteController;->getCurrentPage()Lcom/metamoji/nt/NtPageController;

    move-result-object v0

    invoke-virtual {p0}, Lcom/metamoji/nt/NtDocument;->getMainSheet()Lcom/metamoji/nt/NtNoteController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/metamoji/nt/NtNoteController;->getCurrentPageIndex()I

    move-result p0

    add-int/lit8 p0, p0, 0x1

    invoke-static {v0, p0, p1}, Lcom/metamoji/nt/NtShare;->getImageAtPage(Lcom/metamoji/nt/NtPageController;ILjava/lang/String;)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method static getExportFilename(Lcom/metamoji/nt/NtDocument;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;
    .locals 0

    if-nez p1, :cond_0

    .line 1577
    invoke-virtual {p0}, Lcom/metamoji/nt/NtDocument;->getDocumentTitleForFileName()Ljava/lang/String;

    move-result-object p1

    :cond_0
    if-ltz p2, :cond_1

    .line 1580
    sget-object p0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    filled-new-array {p1, p2, p3}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "%s-%d%s"

    invoke-static {p0, p2, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1583
    :cond_1
    const-string p0, "%s%s"

    filled-new-array {p1, p3}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static getImageAtPage(Lcom/metamoji/nt/NtPageController;ILjava/lang/String;)Ljava/io/File;
    .locals 4

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 1607
    :cond_0
    invoke-static {}, Lcom/metamoji/nt/NtUserDefaults;->getInstance()Lcom/metamoji/nt/NtUserDefaults;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1609
    const-string v2, "GenerateHDImage"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/metamoji/nt/NtUserDefaults;->getBoolValue(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_1

    const/high16 v1, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_1
    const/high16 v1, 0x40c00000    # 6.0f

    .line 1615
    :goto_0
    invoke-virtual {p0}, Lcom/metamoji/nt/NtPageController;->getDocument()Lcom/metamoji/nt/NtDocument;

    move-result-object v2

    invoke-virtual {v2}, Lcom/metamoji/nt/NtDocument;->isPrivate()Z

    move-result v2

    invoke-static {p0, v1, v2}, Lcom/metamoji/nt/NtShare;->takeSnapshot(Lcom/metamoji/nt/NtPageController;FZ)Landroid/graphics/Bitmap;

    move-result-object v1

    if-nez v1, :cond_2

    return-object v0

    .line 1619
    :cond_2
    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-static {v1, v2}, Lcom/metamoji/cm/ImageUtils;->createBlobFromBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap$CompressFormat;)Lcom/metamoji/cm/Blob;

    move-result-object v2

    .line 1620
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 1622
    invoke-virtual {p0}, Lcom/metamoji/nt/NtPageController;->getDocument()Lcom/metamoji/nt/NtDocument;

    move-result-object p0

    const-string v1, ".jpg"

    invoke-static {p0, p2, p1, v1}, Lcom/metamoji/nt/NtShare;->getSavingFilename(Lcom/metamoji/nt/NtDocument;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 1623
    new-instance p1, Ljava/io/File;

    invoke-static {}, Lcom/metamoji/nt/NtShare;->getTempFolder()Ljava/io/File;

    move-result-object p2

    invoke-direct {p1, p2, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1624
    invoke-virtual {v2}, Lcom/metamoji/cm/Blob;->getData()[B

    move-result-object p0

    invoke-static {p1, p0}, Lcom/metamoji/cm/CmUtils;->saveBufferToFile(Ljava/io/File;[B)Z

    move-result p0

    if-nez p0, :cond_3

    return-object v0

    :cond_3
    return-object p1
.end method

.method public static getSaveFileName()Ljava/lang/String;
    .locals 1

    .line 1047
    sget-object v0, Lcom/metamoji/nt/NtShare;->s_saveFilename:Ljava/lang/String;

    return-object v0
.end method

.method public static getSaveToFile()Ljava/io/File;
    .locals 1

    .line 1044
    sget-object v0, Lcom/metamoji/nt/NtShare;->s_saveToFile:Ljava/io/File;

    return-object v0
.end method

.method static getSavingFilename(Lcom/metamoji/nt/NtDocument;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;
    .locals 0

    if-nez p1, :cond_0

    .line 1566
    invoke-virtual {p0}, Lcom/metamoji/nt/NtDocument;->getDocumentTitleForFileName()Ljava/lang/String;

    move-result-object p1

    .line 1568
    :cond_0
    sget-object p0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    filled-new-array {p1, p2, p3}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "%s%d%s"

    invoke-static {p0, p2, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static getSavingFilename(Lcom/metamoji/nt/NtDocument;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    if-nez p1, :cond_0

    .line 1593
    invoke-virtual {p0}, Lcom/metamoji/nt/NtDocument;->getDocumentTitleForFileName()Ljava/lang/String;

    move-result-object p1

    .line 1595
    :cond_0
    const-string p0, "%s%s"

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static getSelectedAreaAsImage(Lcom/metamoji/nt/NtDocument;Ljava/lang/String;)Ljava/io/File;
    .locals 4

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 1704
    :cond_0
    invoke-static {}, Lcom/metamoji/nt/NtShare;->getTempFolder()Ljava/io/File;

    move-result-object v1

    .line 1705
    const-string v2, ".jpg"

    invoke-static {p0, p1, v2}, Lcom/metamoji/nt/NtShare;->getSavingFilename(Lcom/metamoji/nt/NtDocument;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_1

    return-object v0

    .line 1709
    :cond_1
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1711
    invoke-static {}, Lcom/metamoji/nt/NtUserDefaults;->getInstance()Lcom/metamoji/nt/NtUserDefaults;

    move-result-object p1

    const-string v1, "GenerateHDImage"

    const/4 v3, 0x1

    invoke-virtual {p1, v1, v3}, Lcom/metamoji/nt/NtUserDefaults;->getBoolValue(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_2

    const/high16 p1, 0x40c00000    # 6.0f

    goto :goto_0

    :cond_2
    const/high16 p1, 0x3f800000    # 1.0f

    .line 1713
    :goto_0
    invoke-virtual {p0, v2, p1}, Lcom/metamoji/nt/NtDocument;->exportCurrentSelectionAsImage(Ljava/io/File;F)Z

    move-result p0

    if-eqz p0, :cond_3

    return-object v2

    :cond_3
    return-object v0
.end method

.method static getSelectedPagesAsImage(Lcom/metamoji/nt/NtDocument;IILjava/lang/String;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/nt/NtDocument;",
            "II",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .line 1675
    const-string v0, "MMJNtDocumentSettings"

    invoke-virtual {p0, v0}, Lcom/metamoji/nt/NtDocument;->getDocumentSettingsForType(Ljava/lang/String;)Lcom/metamoji/df/controller/ISettings;

    move-result-object v0

    check-cast v0, Lcom/metamoji/nt/NtDocumentSettings;

    .line 1676
    invoke-virtual {v0}, Lcom/metamoji/nt/NtDocumentSettings;->hasFrontCover()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 1678
    invoke-virtual {p0}, Lcom/metamoji/nt/NtDocument;->getMainSheet()Lcom/metamoji/nt/NtNoteController;

    move-result-object p0

    sub-int/2addr p2, p1

    add-int/lit8 p2, p2, 0x1

    .line 1682
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p2, :cond_1

    add-int v3, p1, v2

    add-int v4, v3, v0

    .line 1687
    invoke-virtual {p0, v3}, Lcom/metamoji/nt/NtNoteController;->getPage(I)Lcom/metamoji/nt/NtPageController;

    move-result-object v3

    .line 1688
    invoke-static {v3, v4, p3}, Lcom/metamoji/nt/NtShare;->getImageAtPage(Lcom/metamoji/nt/NtPageController;ILjava/lang/String;)Ljava/io/File;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1691
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method static getString(I)Ljava/lang/String;
    .locals 1

    .line 1506
    invoke-static {}, Lcom/metamoji/cm/CmUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 1507
    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getTempFolder()Ljava/io/File;
    .locals 3

    .line 81
    sget-object v0, Lcom/metamoji/nt/NtShare;->_tempFolder:Ljava/io/File;

    if-nez v0, :cond_1

    .line 83
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/metamoji/cm/CmUtils;->getPrivateExtDirectory()Ljava/io/File;

    move-result-object v1

    const-string v2, ".sharedData"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v0, Lcom/metamoji/nt/NtShare;->_tempFolder:Ljava/io/File;

    .line 84
    invoke-static {v0}, Lcom/metamoji/cm/CmUtils;->deleteDirOrFile(Ljava/io/File;)Z

    .line 85
    sget-object v0, Lcom/metamoji/nt/NtShare;->_tempFolder:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    .line 86
    sget-object v0, Lcom/metamoji/nt/NtShare;->_tempFolder:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 88
    sput-object v0, Lcom/metamoji/nt/NtShare;->_tempFolder:Ljava/io/File;

    .line 89
    new-instance v0, Lcom/metamoji/cm/CmException;

    const-string v1, "create tempdir failed"

    invoke-direct {v0, v1}, Lcom/metamoji/cm/CmException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 92
    :cond_1
    :goto_0
    sget-object v0, Lcom/metamoji/nt/NtShare;->_tempFolder:Ljava/io/File;

    return-object v0
.end method

.method public static isValidFileName(Ljava/lang/String;)Z
    .locals 6

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 1534
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x40

    const/4 v3, 0x0

    if-le v1, v2, :cond_1

    .line 1536
    sget p0, Lcom/metamoji/noteanytime/R$string;->SEND_FILENAME_NOT_MAXLENGTH:I

    invoke-static {p0, v0, v3}, Lcom/metamoji/cm/CmUtils;->confirmDialog(IILandroid/content/DialogInterface$OnClickListener;)V

    return v0

    .line 1542
    :cond_1
    sget-object v1, Lcom/metamoji/nt/NtShare;->_fileNameCheckArray:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const-string v2, ""

    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 1543
    invoke-virtual {p0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1544
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_3

    .line 1545
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1547
    :cond_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 1550
    :cond_4
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result p0

    if-lez p0, :cond_5

    .line 1551
    sget p0, Lcom/metamoji/noteanytime/R$string;->SEND_INVALID_FILENAME_MSG:I

    invoke-static {p0}, Lcom/metamoji/nt/NtShare;->getString(I)Ljava/lang/String;

    move-result-object p0

    .line 1552
    const-string v1, "%s\n%s"

    filled-new-array {p0, v2}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {v1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 1553
    invoke-static {p0, v3, v3}, Lcom/metamoji/cm/CmUtils;->confirmDialog(Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    return v0

    :cond_5
    const/4 p0, 0x1

    return p0
.end method

.method public static printAsMultiUserPdf(Lcom/metamoji/nt/NtDocument;Ljava/util/List;[I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/nt/NtDocument;",
            "Ljava/util/List<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;[I)V"
        }
    .end annotation

    const/4 v0, 0x1

    .line 494
    sget-object v1, Lcom/metamoji/nt/NtShare$PrintAction;->instance:Lcom/metamoji/nt/NtShare$ISendAction;

    invoke-static {p0, p1, v0, p2, v1}, Lcom/metamoji/nt/NtShare;->shareAsMultiUserPdf(Lcom/metamoji/nt/NtDocument;Ljava/util/List;Z[ILcom/metamoji/nt/NtShare$ISendAction;)V

    return-void
.end method

.method public static printAsPdf(Lcom/metamoji/nt/NtDocument;[ILjava/lang/String;)V
    .locals 1

    .line 462
    sget-object v0, Lcom/metamoji/nt/NtShare$PrintAction;->instance:Lcom/metamoji/nt/NtShare$ISendAction;

    invoke-static {p0, p1, p2, v0}, Lcom/metamoji/nt/NtShare;->shareAsPdf(Lcom/metamoji/nt/NtDocument;[ILjava/lang/String;Lcom/metamoji/nt/NtShare$ISendAction;)V

    return-void
.end method

.method public static printDocument(Lcom/metamoji/nt/NtDocument;Landroidx/fragment/app/FragmentActivity;)V
    .locals 1

    .line 614
    invoke-static {}, Lcom/metamoji/nt/NtPrintPDF;->canPrint()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    if-nez p0, :cond_1

    :goto_0
    return-void

    .line 622
    :cond_1
    new-instance v0, Lcom/metamoji/nt/NtShare$9;

    invoke-direct {v0, p1, p0}, Lcom/metamoji/nt/NtShare$9;-><init>(Landroidx/fragment/app/FragmentActivity;Lcom/metamoji/nt/NtDocument;)V

    .line 641
    invoke-static {v0}, Lcom/metamoji/ns/NsCollaboCommand;->execActionAterReceiveAllData(Lcom/metamoji/ns/INsCollaboAction;)V

    return-void
.end method

.method public static saveAllPagesAsImage(Lcom/metamoji/nt/NtDocument;Ljava/lang/String;)V
    .locals 1

    .line 353
    sget-object v0, Lcom/metamoji/nt/NtShare$SaveAction;->instance:Lcom/metamoji/nt/NtShare$ISendAction;

    invoke-static {p0, p1, v0}, Lcom/metamoji/nt/NtShare;->shareAllPagesAsImage(Lcom/metamoji/nt/NtDocument;Ljava/lang/String;Lcom/metamoji/nt/NtShare$ISendAction;)V

    return-void
.end method

.method public static saveAsAtdoc(Lcom/metamoji/nt/NtDocument;Lcom/metamoji/media/voice/controller/VcRecordingsDef$VcConvOption;Ljava/lang/String;)V
    .locals 1

    .line 666
    sget-object v0, Lcom/metamoji/nt/NtShare$SaveAction;->instance:Lcom/metamoji/nt/NtShare$ISendAction;

    invoke-static {p0, p1, p2, v0}, Lcom/metamoji/nt/NtShare;->shareAsAtdoc(Lcom/metamoji/nt/NtDocument;Lcom/metamoji/media/voice/controller/VcRecordingsDef$VcConvOption;Ljava/lang/String;Lcom/metamoji/nt/NtShare$ISendAction;)V

    return-void
.end method

.method public static saveAsCSVFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1

    .line 1803
    sget-object v0, Lcom/metamoji/nt/NtShare$SaveAction;->instance:Lcom/metamoji/nt/NtShare$ISendAction;

    invoke-static {p0, p1, p2, p3, v0}, Lcom/metamoji/nt/NtShare;->shareAsCSVFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/metamoji/nt/NtShare$ISendAction;)V

    return-void
.end method

.method public static saveAsM4a(Ljava/io/File;Ljava/lang/String;)V
    .locals 1

    .line 1018
    sget-object v0, Lcom/metamoji/nt/NtShare$SaveAction;->instance:Lcom/metamoji/nt/NtShare$ISendAction;

    invoke-static {p0, p1, v0}, Lcom/metamoji/nt/NtShare;->shareAsM4a(Ljava/io/File;Ljava/lang/String;Lcom/metamoji/nt/NtShare$ISendAction;)V

    return-void
.end method

.method public static saveAsMultiUserAtdoc(Lcom/metamoji/nt/NtDocument;Lcom/metamoji/media/voice/controller/VcRecordingsDef$VcConvOption;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/nt/NtDocument;",
            "Lcom/metamoji/media/voice/controller/VcRecordingsDef$VcConvOption;",
            "Ljava/util/List<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;)V"
        }
    .end annotation

    .line 735
    sget-object v0, Lcom/metamoji/nt/NtShare$SaveAction;->instance:Lcom/metamoji/nt/NtShare$ISendAction;

    invoke-static {p0, p1, p2, v0}, Lcom/metamoji/nt/NtShare;->shareAsMultiUserAtdoc(Lcom/metamoji/nt/NtDocument;Lcom/metamoji/media/voice/controller/VcRecordingsDef$VcConvOption;Ljava/util/List;Lcom/metamoji/nt/NtShare$ISendAction;)V

    return-void
.end method

.method public static saveAsMultiUserPdf(Lcom/metamoji/nt/NtDocument;Ljava/util/List;Z[I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/nt/NtDocument;",
            "Ljava/util/List<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;Z[I)V"
        }
    .end annotation

    .line 515
    sget-object v0, Lcom/metamoji/nt/NtShare$SaveAction;->instance:Lcom/metamoji/nt/NtShare$ISendAction;

    invoke-static {p0, p1, p2, p3, v0}, Lcom/metamoji/nt/NtShare;->shareAsMultiUserPdf(Lcom/metamoji/nt/NtDocument;Ljava/util/List;Z[ILcom/metamoji/nt/NtShare$ISendAction;)V

    return-void
.end method

.method public static saveAsPdf(Lcom/metamoji/nt/NtDocument;[ILjava/lang/String;)V
    .locals 1

    .line 458
    sget-object v0, Lcom/metamoji/nt/NtShare$SaveAction;->instance:Lcom/metamoji/nt/NtShare$ISendAction;

    invoke-static {p0, p1, p2, v0}, Lcom/metamoji/nt/NtShare;->shareAsPdf(Lcom/metamoji/nt/NtDocument;[ILjava/lang/String;Lcom/metamoji/nt/NtShare$ISendAction;)V

    return-void
.end method

.method public static saveAsTextFile(Ljava/lang/String;Lcom/metamoji/nt/NtDocument;Ljava/lang/String;)V
    .locals 1

    .line 943
    sget-object v0, Lcom/metamoji/nt/NtShare$SaveAction;->instance:Lcom/metamoji/nt/NtShare$ISendAction;

    invoke-static {p0, p1, p2, v0}, Lcom/metamoji/nt/NtShare;->shareAsTextFile(Ljava/lang/String;Lcom/metamoji/nt/NtDocument;Ljava/lang/String;Lcom/metamoji/nt/NtShare$ISendAction;)V

    return-void
.end method

.method public static saveCurrentPageAsImage(Lcom/metamoji/nt/NtDocument;Ljava/lang/String;)V
    .locals 1

    .line 113
    sget-object v0, Lcom/metamoji/nt/NtShare$SaveAction;->instance:Lcom/metamoji/nt/NtShare$ISendAction;

    invoke-static {p0, p1, v0}, Lcom/metamoji/nt/NtShare;->shareCurrentPageAsImage(Lcom/metamoji/nt/NtDocument;Ljava/lang/String;Lcom/metamoji/nt/NtShare$ISendAction;)V

    return-void
.end method

.method public static saveMultiUserPageImagesAsOneFile(Lcom/metamoji/nt/NtDocument;Ljava/util/List;II)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/nt/NtDocument;",
            "Ljava/util/List<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;II)V"
        }
    .end annotation

    .line 225
    sget-object v0, Lcom/metamoji/nt/NtShare$SaveAction;->instance:Lcom/metamoji/nt/NtShare$ISendAction;

    invoke-static {p0, p1, p2, p3, v0}, Lcom/metamoji/nt/NtShare;->shareMultiUserPageImagesAsOneFile(Lcom/metamoji/nt/NtDocument;Ljava/util/List;IILcom/metamoji/nt/NtShare$ISendAction;)V

    return-void
.end method

.method public static savePageImagesAsOneFile(Lcom/metamoji/nt/NtDocument;IILjava/lang/String;)V
    .locals 1

    .line 147
    sget-object v0, Lcom/metamoji/nt/NtShare$SaveAction;->instance:Lcom/metamoji/nt/NtShare$ISendAction;

    invoke-static {p0, p1, p2, p3, v0}, Lcom/metamoji/nt/NtShare;->sharePageImagesAsOneFile(Lcom/metamoji/nt/NtDocument;IILjava/lang/String;Lcom/metamoji/nt/NtShare$ISendAction;)V

    return-void
.end method

.method public static saveSelectedAreaAsImage(Lcom/metamoji/nt/NtDocument;Ljava/lang/String;)V
    .locals 1

    .line 414
    sget-object v0, Lcom/metamoji/nt/NtShare$SaveAction;->instance:Lcom/metamoji/nt/NtShare$ISendAction;

    invoke-static {p0, p1, v0}, Lcom/metamoji/nt/NtShare;->shareSelectedAreaAsImage(Lcom/metamoji/nt/NtDocument;Ljava/lang/String;Lcom/metamoji/nt/NtShare$ISendAction;)V

    return-void
.end method

.method public static saveSelectedPagesAsImage(Lcom/metamoji/nt/NtDocument;IILjava/lang/String;)V
    .locals 1

    .line 384
    sget-object v0, Lcom/metamoji/nt/NtShare$SaveAction;->instance:Lcom/metamoji/nt/NtShare$ISendAction;

    invoke-static {p0, p1, p2, p3, v0}, Lcom/metamoji/nt/NtShare;->shareSelectedPagesAsImage(Lcom/metamoji/nt/NtDocument;IILjava/lang/String;Lcom/metamoji/nt/NtShare$ISendAction;)V

    return-void
.end method

.method public static shareAllPagesAsImage(Lcom/metamoji/nt/NtDocument;Ljava/lang/String;Lcom/metamoji/nt/NtShare$ISendAction;)V
    .locals 2

    if-nez p0, :cond_0

    return-void

    .line 364
    :cond_0
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    .line 365
    invoke-virtual {v0}, Lcom/metamoji/cm/CmTaskManager;->invokeWaitScreenNow()V

    .line 366
    new-instance v1, Lcom/metamoji/nt/NtShare$4;

    invoke-direct {v1, p0, p1, p2}, Lcom/metamoji/nt/NtShare$4;-><init>(Lcom/metamoji/nt/NtDocument;Ljava/lang/String;Lcom/metamoji/nt/NtShare$ISendAction;)V

    const/4 p0, 0x0

    invoke-virtual {v0, v1, p0, p0}, Lcom/metamoji/cm/CmTaskManager;->ensureRunOnBackground(Ljava/lang/Runnable;Lcom/metamoji/cm/CmTaskManager$ICancellable;Lcom/metamoji/cm/CmTaskManager$IOnCompleted;)V

    return-void
.end method

.method public static shareAsAtdoc(Lcom/metamoji/nt/NtDocument;Lcom/metamoji/media/voice/controller/VcRecordingsDef$VcConvOption;Ljava/lang/String;)V
    .locals 1

    .line 652
    sget-object v0, Lcom/metamoji/nt/NtShare$SendAction;->instance:Lcom/metamoji/nt/NtShare$ISendAction;

    invoke-static {p0, p1, p2, v0}, Lcom/metamoji/nt/NtShare;->shareAsAtdoc(Lcom/metamoji/nt/NtDocument;Lcom/metamoji/media/voice/controller/VcRecordingsDef$VcConvOption;Ljava/lang/String;Lcom/metamoji/nt/NtShare$ISendAction;)V

    return-void
.end method

.method public static shareAsAtdoc(Lcom/metamoji/nt/NtDocument;Lcom/metamoji/media/voice/controller/VcRecordingsDef$VcConvOption;Ljava/lang/String;Lcom/metamoji/nt/NtShare$ISendAction;)V
    .locals 2

    if-nez p0, :cond_0

    return-void

    .line 677
    :cond_0
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    .line 678
    invoke-virtual {v0}, Lcom/metamoji/cm/CmTaskManager;->invokeWaitScreenNow()V

    .line 679
    new-instance v1, Lcom/metamoji/nt/NtShare$10;

    invoke-direct {v1, p0, p2, p1, p3}, Lcom/metamoji/nt/NtShare$10;-><init>(Lcom/metamoji/nt/NtDocument;Ljava/lang/String;Lcom/metamoji/media/voice/controller/VcRecordingsDef$VcConvOption;Lcom/metamoji/nt/NtShare$ISendAction;)V

    const/4 p0, 0x0

    invoke-virtual {v0, v1, p0, p0}, Lcom/metamoji/cm/CmTaskManager;->ensureRunOnBackground(Ljava/lang/Runnable;Lcom/metamoji/cm/CmTaskManager$ICancellable;Lcom/metamoji/cm/CmTaskManager$IOnCompleted;)V

    return-void
.end method

.method public static shareAsAtshare(Lcom/metamoji/nt/NtDocument;[Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 858
    sget-object v0, Lcom/metamoji/nt/NtShare$SendAction;->instance:Lcom/metamoji/nt/NtShare$ISendAction;

    invoke-static {p0, p1, p2, v0}, Lcom/metamoji/nt/NtShare;->shareAsAtshare(Lcom/metamoji/nt/NtDocument;[Ljava/lang/String;Ljava/lang/String;Lcom/metamoji/nt/NtShare$ISendAction;)V

    return-void
.end method

.method public static shareAsAtshare(Lcom/metamoji/nt/NtDocument;[Ljava/lang/String;Ljava/lang/String;Lcom/metamoji/nt/NtShare$ISendAction;)V
    .locals 2

    if-eqz p0, :cond_1

    .line 865
    invoke-virtual {p0}, Lcom/metamoji/nt/NtDocument;->isCollabo()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 869
    :cond_0
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    .line 870
    invoke-virtual {v0}, Lcom/metamoji/cm/CmTaskManager;->invokeWaitScreenNow()V

    .line 871
    new-instance v1, Lcom/metamoji/nt/NtShare$13;

    invoke-direct {v1, p0, p2, p3, p1}, Lcom/metamoji/nt/NtShare$13;-><init>(Lcom/metamoji/nt/NtDocument;Ljava/lang/String;Lcom/metamoji/nt/NtShare$ISendAction;[Ljava/lang/String;)V

    const/4 p0, 0x0

    invoke-virtual {v0, v1, p0, p0}, Lcom/metamoji/cm/CmTaskManager;->ensureRunOnBackground(Ljava/lang/Runnable;Lcom/metamoji/cm/CmTaskManager$ICancellable;Lcom/metamoji/cm/CmTaskManager$IOnCompleted;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static shareAsCSVFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/metamoji/nt/NtShare$ISendAction;)V
    .locals 7

    if-eqz p0, :cond_1

    .line 1806
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 1812
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/metamoji/nt/NtShare;->getTempFolder()Ljava/io/File;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1817
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    .line 1818
    invoke-virtual {v0}, Lcom/metamoji/cm/CmTaskManager;->invokeWaitScreenNow()V

    .line 1819
    new-instance v1, Lcom/metamoji/nt/NtShare$18;

    move-object v3, p0

    move-object v2, p1

    move-object v4, p2

    move v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/metamoji/nt/NtShare$18;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/metamoji/nt/NtShare$ISendAction;)V

    const/4 p0, 0x0

    invoke-virtual {v0, v1, p0, p0}, Lcom/metamoji/cm/CmTaskManager;->ensureRunOnBackground(Ljava/lang/Runnable;Lcom/metamoji/cm/CmTaskManager$ICancellable;Lcom/metamoji/cm/CmTaskManager$IOnCompleted;)V

    :catch_0
    :cond_1
    :goto_0
    return-void
.end method

.method public static shareAsM4a(Ljava/io/File;Ljava/lang/String;)V
    .locals 1

    .line 1015
    sget-object v0, Lcom/metamoji/nt/NtShare$SendAction;->instance:Lcom/metamoji/nt/NtShare$ISendAction;

    invoke-static {p0, p1, v0}, Lcom/metamoji/nt/NtShare;->shareAsM4a(Ljava/io/File;Ljava/lang/String;Lcom/metamoji/nt/NtShare$ISendAction;)V

    return-void
.end method

.method public static shareAsM4a(Ljava/io/File;Ljava/lang/String;Lcom/metamoji/nt/NtShare$ISendAction;)V
    .locals 2

    .line 1021
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    .line 1022
    invoke-virtual {v0}, Lcom/metamoji/cm/CmTaskManager;->invokeWaitScreenNow()V

    .line 1023
    new-instance v1, Lcom/metamoji/nt/NtShare$16;

    invoke-direct {v1, p1, p0, p2}, Lcom/metamoji/nt/NtShare$16;-><init>(Ljava/lang/String;Ljava/io/File;Lcom/metamoji/nt/NtShare$ISendAction;)V

    const/4 p0, 0x0

    invoke-virtual {v0, v1, p0, p0}, Lcom/metamoji/cm/CmTaskManager;->ensureRunOnBackground(Ljava/lang/Runnable;Lcom/metamoji/cm/CmTaskManager$ICancellable;Lcom/metamoji/cm/CmTaskManager$IOnCompleted;)V

    return-void
.end method

.method public static shareAsMultiUserAtdoc(Lcom/metamoji/nt/NtDocument;Lcom/metamoji/media/voice/controller/VcRecordingsDef$VcConvOption;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/nt/NtDocument;",
            "Lcom/metamoji/media/voice/controller/VcRecordingsDef$VcConvOption;",
            "Ljava/util/List<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;)V"
        }
    .end annotation

    .line 732
    sget-object v0, Lcom/metamoji/nt/NtShare$SendAction;->instance:Lcom/metamoji/nt/NtShare$ISendAction;

    invoke-static {p0, p1, p2, v0}, Lcom/metamoji/nt/NtShare;->shareAsMultiUserAtdoc(Lcom/metamoji/nt/NtDocument;Lcom/metamoji/media/voice/controller/VcRecordingsDef$VcConvOption;Ljava/util/List;Lcom/metamoji/nt/NtShare$ISendAction;)V

    return-void
.end method

.method public static shareAsMultiUserAtdoc(Lcom/metamoji/nt/NtDocument;Lcom/metamoji/media/voice/controller/VcRecordingsDef$VcConvOption;Ljava/util/List;Lcom/metamoji/nt/NtShare$ISendAction;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/nt/NtDocument;",
            "Lcom/metamoji/media/voice/controller/VcRecordingsDef$VcConvOption;",
            "Ljava/util/List<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;",
            "Lcom/metamoji/nt/NtShare$ISendAction;",
            ")V"
        }
    .end annotation

    if-nez p0, :cond_0

    return-void

    .line 747
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/metamoji/nt/NtShare;->getTempFolder()Ljava/io/File;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 758
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    .line 759
    invoke-virtual {v0}, Lcom/metamoji/cm/CmTaskManager;->invokeWaitScreenNow()V

    .line 760
    new-instance v1, Lcom/metamoji/nt/NtShare$12;

    invoke-direct {v1, p2, p0, p1, p3}, Lcom/metamoji/nt/NtShare$12;-><init>(Ljava/util/List;Lcom/metamoji/nt/NtDocument;Lcom/metamoji/media/voice/controller/VcRecordingsDef$VcConvOption;Lcom/metamoji/nt/NtShare$ISendAction;)V

    const/4 p0, 0x0

    invoke-virtual {v0, v1, p0, p0}, Lcom/metamoji/cm/CmTaskManager;->ensureRunOnBackground(Ljava/lang/Runnable;Lcom/metamoji/cm/CmTaskManager$ICancellable;Lcom/metamoji/cm/CmTaskManager$IOnCompleted;)V

    return-void

    .line 749
    :catch_0
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object p0

    new-instance p1, Lcom/metamoji/nt/NtShare$11;

    invoke-direct {p1}, Lcom/metamoji/nt/NtShare$11;-><init>()V

    invoke-virtual {p0, p1}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThreadAsync(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public static shareAsMultiUserPdf(Lcom/metamoji/nt/NtDocument;Ljava/util/List;Z[I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/nt/NtDocument;",
            "Ljava/util/List<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;Z[I)V"
        }
    .end annotation

    .line 501
    sget-object v0, Lcom/metamoji/nt/NtShare$SendAction;->instance:Lcom/metamoji/nt/NtShare$ISendAction;

    invoke-static {p0, p1, p2, p3, v0}, Lcom/metamoji/nt/NtShare;->shareAsMultiUserPdf(Lcom/metamoji/nt/NtDocument;Ljava/util/List;Z[ILcom/metamoji/nt/NtShare$ISendAction;)V

    return-void
.end method

.method public static shareAsMultiUserPdf(Lcom/metamoji/nt/NtDocument;Ljava/util/List;Z[ILcom/metamoji/nt/NtShare$ISendAction;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/nt/NtDocument;",
            "Ljava/util/List<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;Z[I",
            "Lcom/metamoji/nt/NtShare$ISendAction;",
            ")V"
        }
    .end annotation

    .line 520
    invoke-static {}, Lcom/metamoji/nt/NtPrintPDF;->canPrint()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    if-nez p0, :cond_1

    :goto_0
    return-void

    .line 529
    :cond_1
    :try_start_0
    invoke-static {}, Lcom/metamoji/nt/NtShare;->getTempFolder()Ljava/io/File;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 542
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    .line 543
    invoke-virtual {v0}, Lcom/metamoji/cm/CmTaskManager;->invokeWaitScreenNow()V

    .line 544
    new-instance v1, Lcom/metamoji/nt/NtShare$8;

    move-object v5, p0

    move-object v3, p1

    move v2, p2

    move-object v4, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/metamoji/nt/NtShare$8;-><init>(ZLjava/util/List;[ILcom/metamoji/nt/NtDocument;Lcom/metamoji/nt/NtShare$ISendAction;)V

    const/4 p0, 0x0

    invoke-virtual {v0, v1, p0, p0}, Lcom/metamoji/cm/CmTaskManager;->ensureRunOnBackground(Ljava/lang/Runnable;Lcom/metamoji/cm/CmTaskManager$ICancellable;Lcom/metamoji/cm/CmTaskManager$IOnCompleted;)V

    :catch_0
    return-void
.end method

.method public static shareAsPdf(Lcom/metamoji/nt/NtDocument;[ILjava/lang/String;)V
    .locals 1

    .line 444
    sget-object v0, Lcom/metamoji/nt/NtShare$SendAction;->instance:Lcom/metamoji/nt/NtShare$ISendAction;

    invoke-static {p0, p1, p2, v0}, Lcom/metamoji/nt/NtShare;->shareAsPdf(Lcom/metamoji/nt/NtDocument;[ILjava/lang/String;Lcom/metamoji/nt/NtShare$ISendAction;)V

    return-void
.end method

.method public static shareAsPdf(Lcom/metamoji/nt/NtDocument;[ILjava/lang/String;Lcom/metamoji/nt/NtShare$ISendAction;)V
    .locals 2

    .line 468
    invoke-static {}, Lcom/metamoji/nt/NtPrintPDF;->canPrint()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    if-nez p0, :cond_1

    :goto_0
    return-void

    .line 475
    :cond_1
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    .line 476
    invoke-virtual {v0}, Lcom/metamoji/cm/CmTaskManager;->invokeWaitScreenNow()V

    .line 477
    new-instance v1, Lcom/metamoji/nt/NtShare$7;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/metamoji/nt/NtShare$7;-><init>(Lcom/metamoji/nt/NtDocument;[ILjava/lang/String;Lcom/metamoji/nt/NtShare$ISendAction;)V

    const/4 p0, 0x0

    invoke-virtual {v0, v1, p0, p0}, Lcom/metamoji/cm/CmTaskManager;->ensureRunOnBackground(Ljava/lang/Runnable;Lcom/metamoji/cm/CmTaskManager$ICancellable;Lcom/metamoji/cm/CmTaskManager$IOnCompleted;)V

    return-void
.end method

.method public static shareAsText(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 2

    if-eqz p0, :cond_1

    .line 977
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 981
    :cond_0
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    new-instance v1, Lcom/metamoji/nt/NtShare$15;

    invoke-direct {v1, p0, p1}, Lcom/metamoji/nt/NtShare$15;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    const/4 p0, 0x0

    invoke-virtual {v0, v1, p0, p0}, Lcom/metamoji/cm/CmTaskManager;->ensureRunOnBackground(Ljava/lang/Runnable;Lcom/metamoji/cm/CmTaskManager$ICancellable;Lcom/metamoji/cm/CmTaskManager$IOnCompleted;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static shareAsTextFile(Ljava/lang/String;Lcom/metamoji/nt/NtDocument;Ljava/lang/String;)V
    .locals 1

    .line 925
    sget-object v0, Lcom/metamoji/nt/NtShare$SendAction;->instance:Lcom/metamoji/nt/NtShare$ISendAction;

    invoke-static {p0, p1, p2, v0}, Lcom/metamoji/nt/NtShare;->shareAsTextFile(Ljava/lang/String;Lcom/metamoji/nt/NtDocument;Ljava/lang/String;Lcom/metamoji/nt/NtShare$ISendAction;)V

    return-void
.end method

.method public static shareAsTextFile(Ljava/lang/String;Lcom/metamoji/nt/NtDocument;Ljava/lang/String;Lcom/metamoji/nt/NtShare$ISendAction;)V
    .locals 2

    if-eqz p0, :cond_1

    .line 952
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_0

    goto :goto_0

    .line 954
    :cond_0
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    .line 955
    invoke-virtual {v0}, Lcom/metamoji/cm/CmTaskManager;->invokeWaitScreenNow()V

    .line 956
    new-instance v1, Lcom/metamoji/nt/NtShare$14;

    invoke-direct {v1, p1, p2, p0, p3}, Lcom/metamoji/nt/NtShare$14;-><init>(Lcom/metamoji/nt/NtDocument;Ljava/lang/String;Ljava/lang/String;Lcom/metamoji/nt/NtShare$ISendAction;)V

    const/4 p0, 0x0

    invoke-virtual {v0, v1, p0, p0}, Lcom/metamoji/cm/CmTaskManager;->ensureRunOnBackground(Ljava/lang/Runnable;Lcom/metamoji/cm/CmTaskManager$ICancellable;Lcom/metamoji/cm/CmTaskManager$IOnCompleted;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static shareCurrentPageAsImage(Lcom/metamoji/nt/NtDocument;Ljava/lang/String;)V
    .locals 1

    .line 99
    sget-object v0, Lcom/metamoji/nt/NtShare$SendAction;->instance:Lcom/metamoji/nt/NtShare$ISendAction;

    invoke-static {p0, p1, v0}, Lcom/metamoji/nt/NtShare;->shareCurrentPageAsImage(Lcom/metamoji/nt/NtDocument;Ljava/lang/String;Lcom/metamoji/nt/NtShare$ISendAction;)V

    return-void
.end method

.method public static shareCurrentPageAsImage(Lcom/metamoji/nt/NtDocument;Ljava/lang/String;Lcom/metamoji/nt/NtShare$ISendAction;)V
    .locals 2

    if-nez p0, :cond_0

    return-void

    .line 124
    :cond_0
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    .line 125
    invoke-virtual {v0}, Lcom/metamoji/cm/CmTaskManager;->invokeWaitScreenNow()V

    .line 126
    new-instance v1, Lcom/metamoji/nt/NtShare$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/metamoji/nt/NtShare$1;-><init>(Lcom/metamoji/nt/NtDocument;Ljava/lang/String;Lcom/metamoji/nt/NtShare$ISendAction;)V

    const/4 p0, 0x0

    invoke-virtual {v0, v1, p0, p0}, Lcom/metamoji/cm/CmTaskManager;->ensureRunOnBackground(Ljava/lang/Runnable;Lcom/metamoji/cm/CmTaskManager$ICancellable;Lcom/metamoji/cm/CmTaskManager$IOnCompleted;)V

    return-void
.end method

.method public static shareFile(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Lcom/metamoji/nt/NtShare$ISendAction;)V
    .locals 6

    if-nez p0, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_1

    .line 1059
    const-string p1, "application/octet-stream"

    :cond_1
    move-object v2, p1

    if-nez p2, :cond_2

    .line 1062
    sget p1, Lcom/metamoji/noteanytime/R$string;->Cabinet_NoTitle:I

    invoke-static {p1}, Lcom/metamoji/cm/CmUtils;->loadString(I)Ljava/lang/String;

    move-result-object p2

    :cond_2
    move-object v3, p2

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    move-object v0, p3

    .line 1065
    invoke-interface/range {v0 .. v5}, Lcom/metamoji/nt/NtShare$ISendAction;->sendFile(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method public static shareMultiUserPageImagesAsOneFile(Lcom/metamoji/nt/NtDocument;Ljava/util/List;II)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/nt/NtDocument;",
            "Ljava/util/List<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;II)V"
        }
    .end annotation

    .line 222
    sget-object v0, Lcom/metamoji/nt/NtShare$SendAction;->instance:Lcom/metamoji/nt/NtShare$ISendAction;

    invoke-static {p0, p1, p2, p3, v0}, Lcom/metamoji/nt/NtShare;->shareMultiUserPageImagesAsOneFile(Lcom/metamoji/nt/NtDocument;Ljava/util/List;IILcom/metamoji/nt/NtShare$ISendAction;)V

    return-void
.end method

.method public static shareMultiUserPageImagesAsOneFile(Lcom/metamoji/nt/NtDocument;Ljava/util/List;IILcom/metamoji/nt/NtShare$ISendAction;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/nt/NtDocument;",
            "Ljava/util/List<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;II",
            "Lcom/metamoji/nt/NtShare$ISendAction;",
            ")V"
        }
    .end annotation

    if-nez p0, :cond_0

    return-void

    .line 246
    :cond_0
    invoke-static {}, Lcom/metamoji/nt/NtUserDefaults;->getInstance()Lcom/metamoji/nt/NtUserDefaults;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 248
    const-string v1, "GenerateHDImage"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/metamoji/nt/NtUserDefaults;->getBoolValue(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_1

    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_1
    const/high16 v0, 0x40c00000    # 6.0f

    :goto_0
    move v7, v0

    .line 255
    new-instance v6, Lcom/metamoji/nt/NtShare$MultiUserPagePurgeableChecker;

    const/4 v0, 0x0

    invoke-direct {v6, v0}, Lcom/metamoji/nt/NtShare$MultiUserPagePurgeableChecker;-><init>(Lcom/metamoji/nt/NtShare-IA;)V

    .line 256
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v9

    .line 257
    invoke-virtual {v9}, Lcom/metamoji/cm/CmTaskManager;->invokeWaitScreenNow()V

    .line 258
    new-instance v1, Lcom/metamoji/nt/NtShare$3;

    move-object v2, p0

    move-object v3, p1

    move v5, p2

    move v4, p3

    move-object v8, p4

    invoke-direct/range {v1 .. v8}, Lcom/metamoji/nt/NtShare$3;-><init>(Lcom/metamoji/nt/NtDocument;Ljava/util/List;IILcom/metamoji/nt/NtShare$MultiUserPagePurgeableChecker;FLcom/metamoji/nt/NtShare$ISendAction;)V

    invoke-virtual {v9, v1, v0, v0}, Lcom/metamoji/cm/CmTaskManager;->ensureRunOnBackground(Ljava/lang/Runnable;Lcom/metamoji/cm/CmTaskManager$ICancellable;Lcom/metamoji/cm/CmTaskManager$IOnCompleted;)V

    return-void
.end method

.method public static sharePageImagesAsOneFile(Lcom/metamoji/nt/NtDocument;IILjava/lang/String;)V
    .locals 1

    .line 144
    sget-object v0, Lcom/metamoji/nt/NtShare$SendAction;->instance:Lcom/metamoji/nt/NtShare$ISendAction;

    invoke-static {p0, p1, p2, p3, v0}, Lcom/metamoji/nt/NtShare;->sharePageImagesAsOneFile(Lcom/metamoji/nt/NtDocument;IILjava/lang/String;Lcom/metamoji/nt/NtShare$ISendAction;)V

    return-void
.end method

.method public static sharePageImagesAsOneFile(Lcom/metamoji/nt/NtDocument;IILjava/lang/String;Lcom/metamoji/nt/NtShare$ISendAction;)V
    .locals 7

    if-nez p0, :cond_0

    return-void

    .line 156
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/metamoji/nt/NtShare;->getTempFolder()Ljava/io/File;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 169
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    .line 170
    invoke-virtual {v0}, Lcom/metamoji/cm/CmTaskManager;->invokeWaitScreenNow()V

    .line 171
    new-instance v1, Lcom/metamoji/nt/NtShare$2;

    move-object v2, p0

    move v4, p1

    move v3, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/metamoji/nt/NtShare$2;-><init>(Lcom/metamoji/nt/NtDocument;IILjava/lang/String;Lcom/metamoji/nt/NtShare$ISendAction;)V

    const/4 p0, 0x0

    invoke-virtual {v0, v1, p0, p0}, Lcom/metamoji/cm/CmTaskManager;->ensureRunOnBackground(Ljava/lang/Runnable;Lcom/metamoji/cm/CmTaskManager$ICancellable;Lcom/metamoji/cm/CmTaskManager$IOnCompleted;)V

    :catch_0
    return-void
.end method

.method public static shareSelectedAreaAsImage(Lcom/metamoji/nt/NtDocument;Ljava/lang/String;Lcom/metamoji/nt/NtShare$ISendAction;)V
    .locals 2

    if-nez p0, :cond_0

    return-void

    .line 425
    :cond_0
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    .line 426
    invoke-virtual {v0}, Lcom/metamoji/cm/CmTaskManager;->invokeWaitScreenNow()V

    .line 427
    new-instance v1, Lcom/metamoji/nt/NtShare$6;

    invoke-direct {v1, p0, p1, p2}, Lcom/metamoji/nt/NtShare$6;-><init>(Lcom/metamoji/nt/NtDocument;Ljava/lang/String;Lcom/metamoji/nt/NtShare$ISendAction;)V

    const/4 p0, 0x0

    invoke-virtual {v0, v1, p0, p0}, Lcom/metamoji/cm/CmTaskManager;->ensureRunOnBackground(Ljava/lang/Runnable;Lcom/metamoji/cm/CmTaskManager$ICancellable;Lcom/metamoji/cm/CmTaskManager$IOnCompleted;)V

    return-void
.end method

.method public static shareSelectedPagesAsImage(Lcom/metamoji/nt/NtDocument;IILjava/lang/String;Lcom/metamoji/nt/NtShare$ISendAction;)V
    .locals 7

    if-nez p0, :cond_0

    return-void

    .line 395
    :cond_0
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    .line 396
    invoke-virtual {v0}, Lcom/metamoji/cm/CmTaskManager;->invokeWaitScreenNow()V

    .line 397
    new-instance v1, Lcom/metamoji/nt/NtShare$5;

    move-object v2, p0

    move v3, p1

    move v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/metamoji/nt/NtShare$5;-><init>(Lcom/metamoji/nt/NtDocument;IILjava/lang/String;Lcom/metamoji/nt/NtShare$ISendAction;)V

    const/4 p0, 0x0

    invoke-virtual {v0, v1, p0, p0}, Lcom/metamoji/cm/CmTaskManager;->ensureRunOnBackground(Ljava/lang/Runnable;Lcom/metamoji/cm/CmTaskManager$ICancellable;Lcom/metamoji/cm/CmTaskManager$IOnCompleted;)V

    return-void
.end method

.method static showErrorMessage(Landroid/content/Context;I)V
    .locals 0

    .line 1497
    invoke-static {p1}, Lcom/metamoji/nt/NtShare;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 1498
    invoke-static {p0, p1}, Lcom/metamoji/nt/NtShare;->showErrorMessage(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method static showErrorMessage(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    .line 1502
    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method static takeSnapshot(Lcom/metamoji/nt/NtPageController;FZ)Landroid/graphics/Bitmap;
    .locals 1

    .line 1638
    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolManager;->sharedInstance()Lcom/metamoji/forSchool/ScSchoolManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/forSchool/ScSchoolManager;->isTeacher()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1639
    invoke-virtual {p0, p1, p2}, Lcom/metamoji/nt/NtPageController;->takeMySnapshotForSchool(FZ)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0

    .line 1641
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/metamoji/nt/NtPageController;->takeSnapshotForSchool(FZ)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method
