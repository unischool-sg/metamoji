.class public Lcom/metamoji/df/sprite/pdf/PDFReader;
.super Ljava/lang/Object;
.source "PDFReader.java"


# static fields
.field private static _flattenPdf:Lcom/metamoji/df/sprite/pdf/IFlattenPdf; = null

.field private static mMemSize:I = 0x800000

.field private static mRefCount:I

.field private static final mSync:Ljava/lang/Object;


# instance fields
.field mToolkit:Lcom/metamoji/df/sprite/pdf/PDFToolkit;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 18
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/metamoji/df/sprite/pdf/PDFReader;->mSync:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 21
    iput-object v0, p0, Lcom/metamoji/df/sprite/pdf/PDFReader;->mToolkit:Lcom/metamoji/df/sprite/pdf/PDFToolkit;

    .line 24
    sget-object v0, Lcom/metamoji/df/sprite/pdf/PDFReader;->mSync:Ljava/lang/Object;

    monitor-enter v0

    .line 25
    :try_start_0
    invoke-static {}, Lcom/metamoji/df/sprite/pdf/PDFToolkit;->getInstance()Lcom/metamoji/df/sprite/pdf/PDFToolkit;

    move-result-object v1

    .line 26
    sget v2, Lcom/metamoji/df/sprite/pdf/PDFReader;->mRefCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v2, :cond_0

    .line 28
    :try_start_1
    sget v2, Lcom/metamoji/df/sprite/pdf/PDFReader;->mMemSize:I

    invoke-virtual {v1, v2}, Lcom/metamoji/df/sprite/pdf/PDFToolkit;->InitFoxitFixedMemory(I)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    .line 30
    :try_start_2
    invoke-static {v2}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;)V

    .line 33
    :cond_0
    :goto_0
    iput-object v1, p0, Lcom/metamoji/df/sprite/pdf/PDFReader;->mToolkit:Lcom/metamoji/df/sprite/pdf/PDFToolkit;

    .line 34
    sget v1, Lcom/metamoji/df/sprite/pdf/PDFReader;->mRefCount:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lcom/metamoji/df/sprite/pdf/PDFReader;->mRefCount:I

    .line 35
    monitor-exit v0

    return-void

    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method

.method public static flattenPdf(Ljava/io/File;Ljava/lang/String;ILjava/io/File;)Z
    .locals 1

    .line 76
    sget-object v0, Lcom/metamoji/df/sprite/pdf/PDFReader;->_flattenPdf:Lcom/metamoji/df/sprite/pdf/IFlattenPdf;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 79
    :cond_0
    invoke-interface {v0, p0, p1, p2, p3}, Lcom/metamoji/df/sprite/pdf/IFlattenPdf;->flatten(Ljava/io/File;Ljava/lang/String;ILjava/io/File;)Z

    move-result p0

    return p0
.end method

.method public static setFlattenPdf(Lcom/metamoji/df/sprite/pdf/IFlattenPdf;)V
    .locals 0

    .line 64
    sput-object p0, Lcom/metamoji/df/sprite/pdf/PDFReader;->_flattenPdf:Lcom/metamoji/df/sprite/pdf/IFlattenPdf;

    return-void
.end method


# virtual methods
.method public createDocument(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Lcom/metamoji/df/sprite/pdf/PDFDocument;
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/metamoji/df/sprite/pdf/PDFReader;->mToolkit:Lcom/metamoji/df/sprite/pdf/PDFToolkit;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 56
    :cond_0
    invoke-virtual {v0, p1, p2, p3}, Lcom/metamoji/df/sprite/pdf/PDFToolkit;->createDocument(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Lcom/metamoji/df/sprite/pdf/PDFDocument;

    move-result-object p1

    return-object p1
.end method

.method public createDocument(Ljava/lang/String;Ljava/lang/String;)Lcom/metamoji/df/sprite/pdf/PDFDocument;
    .locals 1

    .line 49
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x0

    invoke-virtual {p0, v0, p2, p1}, Lcom/metamoji/df/sprite/pdf/PDFReader;->createDocument(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Lcom/metamoji/df/sprite/pdf/PDFDocument;

    move-result-object p1

    return-object p1
.end method

.method public release()V
    .locals 2

    .line 39
    sget-object v0, Lcom/metamoji/df/sprite/pdf/PDFReader;->mSync:Ljava/lang/Object;

    monitor-enter v0

    .line 40
    :try_start_0
    sget v1, Lcom/metamoji/df/sprite/pdf/PDFReader;->mRefCount:I

    add-int/lit8 v1, v1, -0x1

    sput v1, Lcom/metamoji/df/sprite/pdf/PDFReader;->mRefCount:I

    if-gtz v1, :cond_0

    .line 41
    iget-object v1, p0, Lcom/metamoji/df/sprite/pdf/PDFReader;->mToolkit:Lcom/metamoji/df/sprite/pdf/PDFToolkit;

    if-eqz v1, :cond_0

    .line 42
    invoke-virtual {v1}, Lcom/metamoji/df/sprite/pdf/PDFToolkit;->DestroyFoxitFixedMemory()Z

    const/4 v1, 0x0

    .line 43
    iput-object v1, p0, Lcom/metamoji/df/sprite/pdf/PDFReader;->mToolkit:Lcom/metamoji/df/sprite/pdf/PDFToolkit;

    .line 45
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
