.class public final Lcom/metamoji/df/sprite/pdf/PDFDocument;
.super Ljava/lang/Object;
.source "PDFDocument.kt"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/df/sprite/pdf/PDFDocument$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0018\u0000 12\u00020\u0001:\u00011B\u001b\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u0008\u0010\u000e\u001a\u00020\u000fH\u0004J\u0008\u0010\u0010\u001a\u00020\u000fH\u0016J\u000e\u0010\u001d\u001a\u00020\u000f2\u0006\u0010\u001e\u001a\u00020\u0019J(\u0010\u001f\u001a\u0014\u0012\u0008\u0012\u00060!R\u00020\u0015\u0012\u0006\u0012\u0004\u0018\u00010\u00000 2\u0006\u0010\u001e\u001a\u00020\u00192\u0006\u0010\"\u001a\u00020\u0012J\u000e\u0010#\u001a\u00020\u00192\u0006\u0010\"\u001a\u00020\u0012J\u000e\u0010)\u001a\u00020*2\u0006\u0010\"\u001a\u00020\u0012J\u0010\u0010-\u001a\u00020\t2\u0006\u0010\"\u001a\u00020\u0012H\u0002J\u0012\u0010.\u001a\u0004\u0018\u00010\u00192\u0006\u0010\"\u001a\u00020\u0012H\u0002J\u0008\u0010/\u001a\u00020\u000fH\u0002J\u0008\u00100\u001a\u00020\u0005H\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\tX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\tX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000b\u001a\u0004\u0018\u00010\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u00058F\u00a2\u0006\u0006\u001a\u0004\u0008\u000c\u0010\rR\u0011\u0010\u0011\u001a\u00020\u00128G\u00a2\u0006\u0006\u001a\u0004\u0008\u0011\u0010\u0013R\u0010\u0010\u0014\u001a\u0004\u0018\u00010\u0015X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0016\u001a\u0004\u0018\u00010\u0017X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0018\u001a\u0004\u0018\u00010\u0019X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u001a\u001a\u00020\u00158BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u001b\u0010\u001cR\u0010\u0010$\u001a\u0004\u0018\u00010%X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0011\u0010&\u001a\u00020%8F\u00a2\u0006\u0006\u001a\u0004\u0008\'\u0010(R\u0014\u0010+\u001a\u0008\u0012\u0004\u0012\u00020\u00030,X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u00062"
    }
    d2 = {
        "Lcom/metamoji/df/sprite/pdf/PDFDocument;",
        "Ljava/io/Closeable;",
        "_file",
        "Ljava/io/File;",
        "ticket",
        "",
        "<init>",
        "(Ljava/io/File;Ljava/lang/String;)V",
        "_closed",
        "",
        "_noTextSearch",
        "_ticket",
        "getTicket",
        "()Ljava/lang/String;",
        "finalize",
        "",
        "close",
        "size",
        "",
        "()I",
        "_docForRender",
        "Landroid/graphics/pdf/PdfRenderer;",
        "_fileDescriptor",
        "Landroid/os/ParcelFileDescriptor;",
        "_currentPage",
        "Lcom/metamoji/df/sprite/pdf/PDFPage;",
        "docForRender",
        "getDocForRender",
        "()Landroid/graphics/pdf/PdfRenderer;",
        "closeFromPage",
        "page",
        "reopenFromPage",
        "Lkotlin/Pair;",
        "Landroid/graphics/pdf/PdfRenderer$Page;",
        "index",
        "getPage",
        "_docForTextSearch",
        "Lcom/metamoji/pdf/PDFDocument;",
        "docForTextSearch",
        "getDocForTextSearch",
        "()Lcom/metamoji/pdf/PDFDocument;",
        "getPageForTextSearch",
        "Lcom/metamoji/pdf/PDFPage;",
        "_flattenPages",
        "Landroid/util/SparseArray;",
        "needFlatten",
        "flatten",
        "clearFlattenPages",
        "toString",
        "Companion",
        "sprite"
    }
    k = 0x1
    mv = {
        0x2,
        0x2,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final Companion:Lcom/metamoji/df/sprite/pdf/PDFDocument$Companion;

.field private static final WORKDIRNAME:Ljava/lang/String; = "com.metamoji.df.sprite.pdf.work"


# instance fields
.field private _closed:Z

.field private _currentPage:Lcom/metamoji/df/sprite/pdf/PDFPage;

.field private _docForRender:Landroid/graphics/pdf/PdfRenderer;

.field private _docForTextSearch:Lcom/metamoji/pdf/PDFDocument;

.field private final _file:Ljava/io/File;

.field private _fileDescriptor:Landroid/os/ParcelFileDescriptor;

.field private final _flattenPages:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field private _noTextSearch:Z

.field private final _ticket:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/metamoji/df/sprite/pdf/PDFDocument$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/metamoji/df/sprite/pdf/PDFDocument$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/metamoji/df/sprite/pdf/PDFDocument;->Companion:Lcom/metamoji/df/sprite/pdf/PDFDocument$Companion;

    return-void
.end method

.method public constructor <init>(Ljava/io/File;Ljava/lang/String;)V
    .locals 1

    const-string v0, "_file"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/metamoji/df/sprite/pdf/PDFDocument;->_file:Ljava/io/File;

    const/4 p1, 0x0

    if-nez p2, :cond_0

    goto :goto_1

    .line 39
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/metamoji/df/sprite/pdf/PDFDocument;->getDocForTextSearch()Lcom/metamoji/pdf/PDFDocument;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p2

    .line 42
    const-string v0, "failed to get mmjpdf document"

    invoke-static {p2, v0}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;Ljava/lang/String;)V

    move-object p2, p1

    :goto_0
    move-object p1, p2

    .line 32
    :goto_1
    iput-object p1, p0, Lcom/metamoji/df/sprite/pdf/PDFDocument;->_ticket:Ljava/lang/String;

    .line 219
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/metamoji/df/sprite/pdf/PDFDocument;->_flattenPages:Landroid/util/SparseArray;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/io/File;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 23
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/metamoji/df/sprite/pdf/PDFDocument;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-void
.end method

.method private final clearFlattenPages()V
    .locals 3

    .line 255
    iget-object v0, p0, Lcom/metamoji/df/sprite/pdf/PDFDocument;->_flattenPages:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x0

    .line 258
    :goto_0
    iget-object v2, p0, Lcom/metamoji/df/sprite/pdf/PDFDocument;->_flattenPages:Landroid/util/SparseArray;

    if-ge v1, v0, :cond_0

    .line 256
    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 258
    :cond_0
    invoke-virtual {v2}, Landroid/util/SparseArray;->clear()V

    return-void
.end method

.method private final flatten(I)Lcom/metamoji/df/sprite/pdf/PDFPage;
    .locals 4

    .line 237
    iget-object v0, p0, Lcom/metamoji/df/sprite/pdf/PDFDocument;->_flattenPages:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    const/4 v1, 0x0

    if-nez v0, :cond_2

    .line 239
    invoke-direct {p0, p1}, Lcom/metamoji/df/sprite/pdf/PDFDocument;->needFlatten(I)Z

    move-result v0

    if-nez v0, :cond_0

    return-object v1

    .line 241
    :cond_0
    sget-object v0, Lcom/metamoji/df/sprite/pdf/PDFDocument;->Companion:Lcom/metamoji/df/sprite/pdf/PDFDocument$Companion;

    invoke-static {v0}, Lcom/metamoji/df/sprite/pdf/PDFDocument$Companion;->access$getWORKDIR(Lcom/metamoji/df/sprite/pdf/PDFDocument$Companion;)Ljava/io/File;

    move-result-object v0

    const-string v2, "_flat"

    const-string v3, ".pdf"

    invoke-static {v2, v3, v0}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    .line 242
    iget-object v2, p0, Lcom/metamoji/df/sprite/pdf/PDFDocument;->_file:Ljava/io/File;

    const-string v3, ""

    invoke-static {v2, v3, p1, v0}, Lcom/metamoji/df/sprite/pdf/PDFReader;->flattenPdf(Ljava/io/File;Ljava/lang/String;ILjava/io/File;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 244
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    return-object v1

    .line 247
    :cond_1
    iget-object v2, p0, Lcom/metamoji/df/sprite/pdf/PDFDocument;->_flattenPages:Landroid/util/SparseArray;

    invoke-virtual {v2, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 250
    :cond_2
    new-instance v2, Lcom/metamoji/df/sprite/pdf/PDFDocument;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/4 v3, 0x2

    invoke-direct {v2, v0, v1, v3, v1}, Lcom/metamoji/df/sprite/pdf/PDFDocument;-><init>(Ljava/io/File;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 251
    new-instance v0, Lcom/metamoji/df/sprite/pdf/PDFPage;

    invoke-direct {v2}, Lcom/metamoji/df/sprite/pdf/PDFDocument;->getDocForRender()Landroid/graphics/pdf/PdfRenderer;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/graphics/pdf/PdfRenderer;->openPage(I)Landroid/graphics/pdf/PdfRenderer$Page;

    move-result-object v1

    invoke-direct {v0, p0, p1, v1, v2}, Lcom/metamoji/df/sprite/pdf/PDFPage;-><init>(Lcom/metamoji/df/sprite/pdf/PDFDocument;ILandroid/graphics/pdf/PdfRenderer$Page;Lcom/metamoji/df/sprite/pdf/PDFDocument;)V

    return-object v0
.end method

.method private final getDocForRender()Landroid/graphics/pdf/PdfRenderer;
    .locals 2

    .line 105
    iget-boolean v0, p0, Lcom/metamoji/df/sprite/pdf/PDFDocument;->_closed:Z

    if-nez v0, :cond_1

    .line 107
    iget-object v0, p0, Lcom/metamoji/df/sprite/pdf/PDFDocument;->_docForRender:Landroid/graphics/pdf/PdfRenderer;

    if-nez v0, :cond_0

    .line 109
    iget-object v0, p0, Lcom/metamoji/df/sprite/pdf/PDFDocument;->_file:Ljava/io/File;

    const/high16 v1, 0x10000000

    invoke-static {v0, v1}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    .line 110
    new-instance v1, Landroid/graphics/pdf/PdfRenderer;

    invoke-direct {v1, v0}, Landroid/graphics/pdf/PdfRenderer;-><init>(Landroid/os/ParcelFileDescriptor;)V

    .line 111
    iput-object v1, p0, Lcom/metamoji/df/sprite/pdf/PDFDocument;->_docForRender:Landroid/graphics/pdf/PdfRenderer;

    .line 112
    iput-object v0, p0, Lcom/metamoji/df/sprite/pdf/PDFDocument;->_fileDescriptor:Landroid/os/ParcelFileDescriptor;

    return-object v1

    :cond_0
    return-object v0

    .line 105
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "file already closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private final needFlatten(I)Z
    .locals 2

    .line 222
    iget-boolean v0, p0, Lcom/metamoji/df/sprite/pdf/PDFDocument;->_noTextSearch:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 224
    :cond_0
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/metamoji/df/sprite/pdf/PDFDocument;->getPageForTextSearch(I)Lcom/metamoji/pdf/PDFPage;

    move-result-object p1

    invoke-virtual {p1}, Lcom/metamoji/pdf/PDFPage;->getAnnotationCount()I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lez p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    return v1

    :catchall_0
    move-exception p1

    .line 227
    const-string v0, "failed to load PDF"

    invoke-static {p1, v0}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;Ljava/lang/String;)V

    return v1
.end method


# virtual methods
.method public close()V
    .locals 4

    .line 61
    iget-boolean v0, p0, Lcom/metamoji/df/sprite/pdf/PDFDocument;->_closed:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 62
    iput-boolean v0, p0, Lcom/metamoji/df/sprite/pdf/PDFDocument;->_closed:Z

    .line 64
    iget-object v0, p0, Lcom/metamoji/df/sprite/pdf/PDFDocument;->_currentPage:Lcom/metamoji/df/sprite/pdf/PDFPage;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/metamoji/df/sprite/pdf/PDFPage;->internalClose()V

    :cond_1
    const/4 v0, 0x0

    .line 65
    iput-object v0, p0, Lcom/metamoji/df/sprite/pdf/PDFDocument;->_currentPage:Lcom/metamoji/df/sprite/pdf/PDFPage;

    .line 67
    iget-object v1, p0, Lcom/metamoji/df/sprite/pdf/PDFDocument;->_docForRender:Landroid/graphics/pdf/PdfRenderer;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/graphics/pdf/PdfRenderer;->close()V

    .line 68
    :cond_2
    iput-object v0, p0, Lcom/metamoji/df/sprite/pdf/PDFDocument;->_docForRender:Landroid/graphics/pdf/PdfRenderer;

    .line 70
    iget-object v1, p0, Lcom/metamoji/df/sprite/pdf/PDFDocument;->_fileDescriptor:Landroid/os/ParcelFileDescriptor;

    if-eqz v1, :cond_4

    if-eqz v1, :cond_3

    .line 72
    :try_start_0
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_1

    .line 73
    :cond_3
    :goto_0
    iput-object v0, p0, Lcom/metamoji/df/sprite/pdf/PDFDocument;->_fileDescriptor:Landroid/os/ParcelFileDescriptor;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 75
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "e="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "PDFDocument"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    :cond_4
    :goto_2
    iget-object v1, p0, Lcom/metamoji/df/sprite/pdf/PDFDocument;->_docForTextSearch:Lcom/metamoji/pdf/PDFDocument;

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Lcom/metamoji/pdf/PDFDocument;->close()V

    .line 80
    :cond_5
    iput-object v0, p0, Lcom/metamoji/df/sprite/pdf/PDFDocument;->_docForTextSearch:Lcom/metamoji/pdf/PDFDocument;

    .line 82
    invoke-direct {p0}, Lcom/metamoji/df/sprite/pdf/PDFDocument;->clearFlattenPages()V

    return-void
.end method

.method public final closeFromPage(Lcom/metamoji/df/sprite/pdf/PDFPage;)V
    .locals 1

    const-string v0, "page"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 125
    invoke-virtual {p1}, Lcom/metamoji/df/sprite/pdf/PDFPage;->internalClose()V

    .line 126
    iget-object v0, p0, Lcom/metamoji/df/sprite/pdf/PDFDocument;->_currentPage:Lcom/metamoji/df/sprite/pdf/PDFPage;

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 127
    iput-object p1, p0, Lcom/metamoji/df/sprite/pdf/PDFDocument;->_currentPage:Lcom/metamoji/df/sprite/pdf/PDFPage;

    :cond_0
    return-void
.end method

.method protected final finalize()V
    .locals 0

    .line 53
    invoke-virtual {p0}, Lcom/metamoji/df/sprite/pdf/PDFDocument;->close()V

    return-void
.end method

.method public final getDocForTextSearch()Lcom/metamoji/pdf/PDFDocument;
    .locals 3

    .line 196
    iget-boolean v0, p0, Lcom/metamoji/df/sprite/pdf/PDFDocument;->_closed:Z

    if-nez v0, :cond_2

    .line 197
    iget-boolean v0, p0, Lcom/metamoji/df/sprite/pdf/PDFDocument;->_noTextSearch:Z

    if-nez v0, :cond_1

    .line 199
    iget-object v0, p0, Lcom/metamoji/df/sprite/pdf/PDFDocument;->_docForTextSearch:Lcom/metamoji/pdf/PDFDocument;

    if-nez v0, :cond_0

    .line 202
    :try_start_0
    new-instance v0, Ljava/io/RandomAccessFile;

    iget-object v1, p0, Lcom/metamoji/df/sprite/pdf/PDFDocument;->_file:Ljava/io/File;

    const-string v2, "r"

    invoke-direct {v0, v1, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const/4 v1, 0x2

    const/4 v2, 0x0

    .line 203
    invoke-static {v0, v2, v1, v2}, Lcom/metamoji/pdf/PDFUtil;->loadPdf$default(Ljava/io/RandomAccessFile;Ljava/lang/String;ILjava/lang/Object;)Lcom/metamoji/pdf/PDFDocument;

    move-result-object v0

    .line 204
    iput-object v0, p0, Lcom/metamoji/df/sprite/pdf/PDFDocument;->_docForTextSearch:Lcom/metamoji/pdf/PDFDocument;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    const/4 v1, 0x1

    .line 206
    iput-boolean v1, p0, Lcom/metamoji/df/sprite/pdf/PDFDocument;->_noTextSearch:Z

    .line 207
    throw v0

    :cond_0
    return-object v0

    .line 197
    :cond_1
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "mmjpdf document is not available"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 196
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "file already closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final getPage(I)Lcom/metamoji/df/sprite/pdf/PDFPage;
    .locals 2

    .line 164
    iget-object v0, p0, Lcom/metamoji/df/sprite/pdf/PDFDocument;->_currentPage:Lcom/metamoji/df/sprite/pdf/PDFPage;

    if-eqz v0, :cond_2

    .line 166
    invoke-virtual {v0}, Lcom/metamoji/df/sprite/pdf/PDFPage;->getIndex()I

    move-result v1

    if-ne v1, p1, :cond_0

    return-object v0

    .line 169
    :cond_0
    iget-object v0, p0, Lcom/metamoji/df/sprite/pdf/PDFDocument;->_currentPage:Lcom/metamoji/df/sprite/pdf/PDFPage;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/metamoji/df/sprite/pdf/PDFPage;->internalClose()V

    :cond_1
    const/4 v0, 0x0

    .line 170
    iput-object v0, p0, Lcom/metamoji/df/sprite/pdf/PDFDocument;->_currentPage:Lcom/metamoji/df/sprite/pdf/PDFPage;

    .line 173
    :cond_2
    invoke-direct {p0, p1}, Lcom/metamoji/df/sprite/pdf/PDFDocument;->flatten(I)Lcom/metamoji/df/sprite/pdf/PDFPage;

    move-result-object v0

    if-nez v0, :cond_3

    new-instance v0, Lcom/metamoji/df/sprite/pdf/PDFPage;

    invoke-direct {p0}, Lcom/metamoji/df/sprite/pdf/PDFDocument;->getDocForRender()Landroid/graphics/pdf/PdfRenderer;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/graphics/pdf/PdfRenderer;->openPage(I)Landroid/graphics/pdf/PdfRenderer$Page;

    move-result-object v1

    invoke-direct {v0, p0, p1, v1}, Lcom/metamoji/df/sprite/pdf/PDFPage;-><init>(Lcom/metamoji/df/sprite/pdf/PDFDocument;ILandroid/graphics/pdf/PdfRenderer$Page;)V

    .line 185
    :cond_3
    iput-object v0, p0, Lcom/metamoji/df/sprite/pdf/PDFDocument;->_currentPage:Lcom/metamoji/df/sprite/pdf/PDFPage;

    return-object v0
.end method

.method public final getPageForTextSearch(I)Lcom/metamoji/pdf/PDFPage;
    .locals 1

    .line 213
    invoke-virtual {p0}, Lcom/metamoji/df/sprite/pdf/PDFDocument;->getDocForTextSearch()Lcom/metamoji/pdf/PDFDocument;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/metamoji/pdf/PDFDocument;->getPage(I)Lcom/metamoji/pdf/PDFPage;

    move-result-object p1

    return-object p1
.end method

.method public final getTicket()Ljava/lang/String;
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/metamoji/df/sprite/pdf/PDFDocument;->_ticket:Ljava/lang/String;

    return-object v0
.end method

.method public final reopenFromPage(Lcom/metamoji/df/sprite/pdf/PDFPage;I)Lkotlin/Pair;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/df/sprite/pdf/PDFPage;",
            "I)",
            "Lkotlin/Pair<",
            "Landroid/graphics/pdf/PdfRenderer$Page;",
            "Lcom/metamoji/df/sprite/pdf/PDFDocument;",
            ">;"
        }
    .end annotation

    const-string v0, "page"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 140
    iget-object v0, p0, Lcom/metamoji/df/sprite/pdf/PDFDocument;->_currentPage:Lcom/metamoji/df/sprite/pdf/PDFPage;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    if-eqz v0, :cond_0

    .line 141
    invoke-virtual {v0}, Lcom/metamoji/df/sprite/pdf/PDFPage;->internalClose()V

    .line 142
    :cond_0
    iput-object v1, p0, Lcom/metamoji/df/sprite/pdf/PDFDocument;->_currentPage:Lcom/metamoji/df/sprite/pdf/PDFPage;

    .line 146
    :cond_1
    iget-object v0, p0, Lcom/metamoji/df/sprite/pdf/PDFDocument;->_flattenPages:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    if-nez v0, :cond_2

    .line 148
    invoke-direct {p0}, Lcom/metamoji/df/sprite/pdf/PDFDocument;->getDocForRender()Landroid/graphics/pdf/PdfRenderer;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/graphics/pdf/PdfRenderer;->openPage(I)Landroid/graphics/pdf/PdfRenderer$Page;

    move-result-object p2

    invoke-static {p2, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p2

    goto :goto_0

    .line 150
    :cond_2
    new-instance p2, Lcom/metamoji/df/sprite/pdf/PDFDocument;

    const/4 v2, 0x2

    invoke-direct {p2, v0, v1, v2, v1}, Lcom/metamoji/df/sprite/pdf/PDFDocument;-><init>(Ljava/io/File;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 151
    invoke-direct {p2}, Lcom/metamoji/df/sprite/pdf/PDFDocument;->getDocForRender()Landroid/graphics/pdf/PdfRenderer;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/pdf/PdfRenderer;->openPage(I)Landroid/graphics/pdf/PdfRenderer$Page;

    move-result-object v0

    invoke-static {v0, p2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p2

    .line 153
    :goto_0
    iput-object p1, p0, Lcom/metamoji/df/sprite/pdf/PDFDocument;->_currentPage:Lcom/metamoji/df/sprite/pdf/PDFPage;

    return-object p2
.end method

.method public final size()I
    .locals 1

    .line 92
    iget-object v0, p0, Lcom/metamoji/df/sprite/pdf/PDFDocument;->_docForRender:Landroid/graphics/pdf/PdfRenderer;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/metamoji/df/sprite/pdf/PDFDocument;->getDocForRender()Landroid/graphics/pdf/PdfRenderer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/pdf/PdfRenderer;->getPageCount()I

    move-result v0

    return v0

    .line 93
    :cond_0
    iget-object v0, p0, Lcom/metamoji/df/sprite/pdf/PDFDocument;->_docForTextSearch:Lcom/metamoji/pdf/PDFDocument;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/metamoji/df/sprite/pdf/PDFDocument;->getDocForTextSearch()Lcom/metamoji/pdf/PDFDocument;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/pdf/PDFDocument;->getPageCount()I

    move-result v0

    return v0

    .line 94
    :cond_1
    invoke-direct {p0}, Lcom/metamoji/df/sprite/pdf/PDFDocument;->getDocForRender()Landroid/graphics/pdf/PdfRenderer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/pdf/PdfRenderer;->getPageCount()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 272
    invoke-virtual {p0}, Lcom/metamoji/df/sprite/pdf/PDFDocument;->size()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "{PDFDocument n="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
