.class public final Lcom/metamoji/nt/pdfsave/PdfSave;
.super Ljava/lang/Object;
.source "PdfSave.kt"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/nt/pdfsave/PdfSave$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000l\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0010\u0012\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u001c\n\u0002\u0008\n\u0018\u0000 /2\u00020\u0001:\u0001/B9\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0003\u0012\u000c\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\t0\u0008\u0012\u0008\u0010\n\u001a\u0004\u0018\u00010\u000b\u00a2\u0006\u0004\u0008\u000c\u0010\rJ\u0008\u0010!\u001a\u00020\"H\u0016J\"\u0010#\u001a\u00020\"2\u0006\u0010$\u001a\u00020\u00052\u0010\u0008\u0002\u0010%\u001a\n\u0012\u0004\u0012\u00020\u0019\u0018\u00010&H\u0007J\u0010\u0010\'\u001a\u00020\"2\u0006\u0010(\u001a\u00020\u0019H\u0002J\u0008\u0010)\u001a\u00020\u0005H\u0002J\u0010\u0010*\u001a\u00020\"2\u0006\u0010$\u001a\u00020\u0005H\u0002J\u0008\u0010+\u001a\u00020\"H\u0002J\u0018\u0010,\u001a\u00020\"2\u000e\u0010-\u001a\n\u0012\u0004\u0012\u00020\u0019\u0018\u00010&H\u0002J\u0008\u0010.\u001a\u00020\"H\u0002R\u000e\u0010\u0006\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u000fX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u0011X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0012\u001a\u00020\u0013X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0014\u001a\u00020\u0015X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0016\u001a\u0004\u0018\u00010\u0017X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0018\u001a\u00020\u0019X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001a\u001a\u00020\u0019X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001b\u001a\u00020\u0019X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001c\u001a\u00020\u0019X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001d\u001a\u00020\u001eX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u001f\u001a\u0004\u0018\u00010 X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u00060"
    }
    d2 = {
        "Lcom/metamoji/nt/pdfsave/PdfSave;",
        "Ljava/io/Closeable;",
        "src",
        "Ljava/io/File;",
        "password",
        "",
        "_output",
        "info",
        "",
        "Lcom/metamoji/df/sprite/pdf/PDFOutputInfo;",
        "attachments",
        "Lcom/metamoji/df/controller/AttachmentsManager;",
        "<init>",
        "(Ljava/io/File;Ljava/lang/String;Ljava/io/File;Ljava/util/List;Lcom/metamoji/df/controller/AttachmentsManager;)V",
        "_src",
        "Lcom/metamoji/pdf/PDFDocument;",
        "_stream",
        "Ljava/io/OutputStream;",
        "_writer",
        "Lcom/metamoji/nt/pdfsave/PdfWriter;",
        "_xref",
        "Lcom/metamoji/nt/pdfsave/PdfXref;",
        "_bank",
        "Lcom/metamoji/nt/pdfsave/PdfPdf;",
        "_objidInfo",
        "",
        "_objidRoot",
        "_objidPages",
        "_objidEncrypt",
        "_fileid",
        "",
        "_encrypt",
        "Lcom/metamoji/nt/pdfsave/PdfEncrypt;",
        "close",
        "",
        "save",
        "title",
        "indices",
        "",
        "saveHeader",
        "ver",
        "getAppName",
        "saveDocumentInformation",
        "saveCatalog",
        "savePages",
        "indices_",
        "saveTrailer",
        "Companion",
        "app"
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
.field public static final Companion:Lcom/metamoji/nt/pdfsave/PdfSave$Companion;


# instance fields
.field private final _bank:Lcom/metamoji/nt/pdfsave/PdfPdf;

.field private _encrypt:Lcom/metamoji/nt/pdfsave/PdfEncrypt;

.field private final _fileid:[B

.field private _objidEncrypt:I

.field private final _objidInfo:I

.field private final _objidPages:I

.field private final _objidRoot:I

.field private final _output:Ljava/io/File;

.field private final _src:Lcom/metamoji/pdf/PDFDocument;

.field private final _stream:Ljava/io/OutputStream;

.field private final _writer:Lcom/metamoji/nt/pdfsave/PdfWriter;

.field private final _xref:Lcom/metamoji/nt/pdfsave/PdfXref;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/metamoji/nt/pdfsave/PdfSave$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/metamoji/nt/pdfsave/PdfSave$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/metamoji/nt/pdfsave/PdfSave;->Companion:Lcom/metamoji/nt/pdfsave/PdfSave$Companion;

    return-void
.end method

.method public constructor <init>(Ljava/io/File;Ljava/lang/String;Ljava/io/File;Ljava/util/List;Lcom/metamoji/df/controller/AttachmentsManager;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            "Ljava/util/List<",
            "Lcom/metamoji/df/sprite/pdf/PDFOutputInfo;",
            ">;",
            "Lcom/metamoji/df/controller/AttachmentsManager;",
            ")V"
        }
    .end annotation

    const-string/jumbo v0, "src"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "_output"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "info"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Lcom/metamoji/nt/pdfsave/PdfSave;->_output:Ljava/io/File;

    .line 26
    new-instance v0, Ljava/io/BufferedOutputStream;

    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    check-cast v1, Ljava/io/OutputStream;

    invoke-direct {v0, v1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    check-cast v0, Ljava/io/OutputStream;

    iput-object v0, p0, Lcom/metamoji/nt/pdfsave/PdfSave;->_stream:Ljava/io/OutputStream;

    .line 29
    new-instance p3, Lcom/metamoji/nt/pdfsave/PdfXref;

    invoke-direct {p3}, Lcom/metamoji/nt/pdfsave/PdfXref;-><init>()V

    iput-object p3, p0, Lcom/metamoji/nt/pdfsave/PdfSave;->_xref:Lcom/metamoji/nt/pdfsave/PdfXref;

    .line 37
    invoke-static {}, Lcom/metamoji/nt/pdfsave/PdfSaveKt;->access$newUUID()[B

    move-result-object v1

    iput-object v1, p0, Lcom/metamoji/nt/pdfsave/PdfSave;->_fileid:[B

    .line 44
    new-instance v1, Lcom/metamoji/nt/pdfsave/PdfWriter;

    iget-object v2, p0, Lcom/metamoji/nt/pdfsave/PdfSave;->_encrypt:Lcom/metamoji/nt/pdfsave/PdfEncrypt;

    invoke-direct {v1, v0, p3, v2}, Lcom/metamoji/nt/pdfsave/PdfWriter;-><init>(Ljava/io/OutputStream;Lcom/metamoji/nt/pdfsave/PdfXref;Lcom/metamoji/nt/pdfsave/PdfEncrypt;)V

    iput-object v1, p0, Lcom/metamoji/nt/pdfsave/PdfSave;->_writer:Lcom/metamoji/nt/pdfsave/PdfWriter;

    if-eqz p5, :cond_0

    .line 45
    new-instance v0, Lcom/metamoji/nt/pdfsave/PdfPdf;

    iget-object v1, p0, Lcom/metamoji/nt/pdfsave/PdfSave;->_encrypt:Lcom/metamoji/nt/pdfsave/PdfEncrypt;

    invoke-direct {v0, p3, v1, p4, p5}, Lcom/metamoji/nt/pdfsave/PdfPdf;-><init>(Lcom/metamoji/nt/pdfsave/PdfXref;Lcom/metamoji/nt/pdfsave/PdfEncrypt;Ljava/util/List;Lcom/metamoji/df/controller/AttachmentsManager;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/metamoji/nt/pdfsave/PdfSave;->_bank:Lcom/metamoji/nt/pdfsave/PdfPdf;

    .line 47
    invoke-virtual {p3}, Lcom/metamoji/nt/pdfsave/PdfXref;->addObject()I

    move-result p4

    iput p4, p0, Lcom/metamoji/nt/pdfsave/PdfSave;->_objidInfo:I

    .line 48
    invoke-virtual {p3}, Lcom/metamoji/nt/pdfsave/PdfXref;->addObject()I

    move-result p4

    iput p4, p0, Lcom/metamoji/nt/pdfsave/PdfSave;->_objidRoot:I

    .line 49
    invoke-virtual {p3}, Lcom/metamoji/nt/pdfsave/PdfXref;->addObject()I

    move-result p3

    iput p3, p0, Lcom/metamoji/nt/pdfsave/PdfSave;->_objidPages:I

    .line 51
    new-instance p3, Ljava/io/RandomAccessFile;

    const-string p4, "r"

    invoke-direct {p3, p1, p4}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {p3, p2}, Lcom/metamoji/pdf/PDFUtil;->loadPdf(Ljava/io/RandomAccessFile;Ljava/lang/String;)Lcom/metamoji/pdf/PDFDocument;

    move-result-object p1

    iput-object p1, p0, Lcom/metamoji/nt/pdfsave/PdfSave;->_src:Lcom/metamoji/pdf/PDFDocument;

    return-void
.end method

.method private final getAppName()Ljava/lang/String;
    .locals 3

    .line 92
    invoke-static {}, Lcom/metamoji/noteanytime/NoteAnytimeApplication;->getInstance()Lcom/metamoji/noteanytime/NoteAnytimeApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/noteanytime/NoteAnytimeApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 93
    invoke-static {}, Lcom/metamoji/noteanytime/NoteAnytimeApplication;->getInstance()Lcom/metamoji/noteanytime/NoteAnytimeApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/metamoji/noteanytime/NoteAnytimeApplication;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 94
    iget v2, v1, Landroid/content/pm/ApplicationInfo;->labelRes:I

    if-nez v2, :cond_0

    .line 96
    iget-object v0, v1, Landroid/content/pm/ApplicationInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 98
    :cond_0
    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 97
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object v0
.end method

.method public static final initFlattenPdf()V
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/metamoji/nt/pdfsave/PdfSave;->Companion:Lcom/metamoji/nt/pdfsave/PdfSave$Companion;

    invoke-virtual {v0}, Lcom/metamoji/nt/pdfsave/PdfSave$Companion;->initFlattenPdf()V

    return-void
.end method

.method public static synthetic save$default(Lcom/metamoji/nt/pdfsave/PdfSave;Ljava/lang/String;Ljava/lang/Iterable;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 59
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/metamoji/nt/pdfsave/PdfSave;->save(Ljava/lang/String;Ljava/lang/Iterable;)V

    return-void
.end method

.method private final saveCatalog()V
    .locals 4

    .line 119
    iget-object v0, p0, Lcom/metamoji/nt/pdfsave/PdfSave;->_writer:Lcom/metamoji/nt/pdfsave/PdfWriter;

    .line 120
    iget v1, p0, Lcom/metamoji/nt/pdfsave/PdfSave;->_objidRoot:I

    invoke-virtual {v0, v1}, Lcom/metamoji/nt/pdfsave/PdfWriter;->beginObject(I)I

    .line 122
    invoke-virtual {v0}, Lcom/metamoji/nt/pdfsave/PdfWriter;->beginDictionary()V

    .line 123
    const-string v1, "/Type/Catalog"

    invoke-virtual {v0, v1}, Lcom/metamoji/nt/pdfsave/PdfWriter;->write(Ljava/lang/String;)V

    .line 124
    iget v1, p0, Lcom/metamoji/nt/pdfsave/PdfSave;->_objidPages:I

    invoke-static {v1}, Lcom/metamoji/nt/pdfsave/PdfSaveToolKt;->OBJREF(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "/Pages "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/metamoji/nt/pdfsave/PdfWriter;->write(Ljava/lang/String;)V

    .line 125
    invoke-virtual {v0}, Lcom/metamoji/nt/pdfsave/PdfWriter;->endDictionary()V

    .line 127
    invoke-virtual {v0}, Lcom/metamoji/nt/pdfsave/PdfWriter;->endObject()V

    return-void
.end method

.method private final saveDocumentInformation(Ljava/lang/String;)V
    .locals 3

    .line 103
    iget-object v0, p0, Lcom/metamoji/nt/pdfsave/PdfSave;->_writer:Lcom/metamoji/nt/pdfsave/PdfWriter;

    .line 104
    iget v1, p0, Lcom/metamoji/nt/pdfsave/PdfSave;->_objidInfo:I

    invoke-virtual {v0, v1}, Lcom/metamoji/nt/pdfsave/PdfWriter;->beginObject(I)I

    .line 106
    invoke-virtual {v0}, Lcom/metamoji/nt/pdfsave/PdfWriter;->beginDictionary()V

    .line 107
    invoke-virtual {v0}, Lcom/metamoji/nt/pdfsave/PdfWriter;->getKey()Lcom/metamoji/nt/pdfsave/PdfEncryptKey;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/metamoji/nt/pdfsave/PdfSaveToolKt;->LITERAL(Ljava/lang/String;Lcom/metamoji/nt/pdfsave/PdfEncryptKey;)Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "/Title"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/metamoji/nt/pdfsave/PdfWriter;->write(Ljava/lang/String;)V

    .line 108
    const-string p1, "MetaMoJi PDF Writer 1.3a"

    invoke-virtual {v0}, Lcom/metamoji/nt/pdfsave/PdfWriter;->getKey()Lcom/metamoji/nt/pdfsave/PdfEncryptKey;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/metamoji/nt/pdfsave/PdfSaveToolKt;->LITERAL(Ljava/lang/String;Lcom/metamoji/nt/pdfsave/PdfEncryptKey;)Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "/Producer"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/metamoji/nt/pdfsave/PdfWriter;->write(Ljava/lang/String;)V

    .line 109
    invoke-direct {p0}, Lcom/metamoji/nt/pdfsave/PdfSave;->getAppName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0}, Lcom/metamoji/nt/pdfsave/PdfWriter;->getKey()Lcom/metamoji/nt/pdfsave/PdfEncryptKey;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/metamoji/nt/pdfsave/PdfSaveToolKt;->LITERAL(Ljava/lang/String;Lcom/metamoji/nt/pdfsave/PdfEncryptKey;)Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "/Creator"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/metamoji/nt/pdfsave/PdfWriter;->write(Ljava/lang/String;)V

    .line 110
    new-instance p1, Ljava/util/Date;

    invoke-direct {p1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Lcom/metamoji/nt/pdfsave/PdfWriter;->getKey()Lcom/metamoji/nt/pdfsave/PdfEncryptKey;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/metamoji/nt/pdfsave/PdfSaveToolKt;->TIME(Ljava/util/Date;Lcom/metamoji/nt/pdfsave/PdfEncryptKey;)Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "/CreationDate"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/metamoji/nt/pdfsave/PdfWriter;->write(Ljava/lang/String;)V

    .line 112
    invoke-virtual {v0}, Lcom/metamoji/nt/pdfsave/PdfWriter;->endDictionary()V

    .line 114
    invoke-virtual {v0}, Lcom/metamoji/nt/pdfsave/PdfWriter;->endObject()V

    return-void
.end method

.method private final saveHeader(I)V
    .locals 4

    const/4 v0, 0x5

    .line 84
    new-array v0, v0, [B

    fill-array-data v0, :array_0

    .line 86
    iget-object v1, p0, Lcom/metamoji/nt/pdfsave/PdfSave;->_writer:Lcom/metamoji/nt/pdfsave/PdfWriter;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "%PDF-1."

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v2, "\n"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/metamoji/nt/pdfsave/PdfWriter;->write(Ljava/lang/String;)V

    .line 87
    iget-object p1, p0, Lcom/metamoji/nt/pdfsave/PdfSave;->_writer:Lcom/metamoji/nt/pdfsave/PdfWriter;

    invoke-virtual {p1, v0}, Lcom/metamoji/nt/pdfsave/PdfWriter;->write([B)V

    .line 88
    iget-object p1, p0, Lcom/metamoji/nt/pdfsave/PdfSave;->_writer:Lcom/metamoji/nt/pdfsave/PdfWriter;

    invoke-virtual {p1, v2}, Lcom/metamoji/nt/pdfsave/PdfWriter;->write(Ljava/lang/String;)V

    return-void

    nop

    :array_0
    .array-data 1
        0x25t
        -0x1et
        -0x1dt
        -0x31t
        -0x2dt
    .end array-data
.end method

.method private final savePages(Ljava/lang/Iterable;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 132
    iget-object p1, p0, Lcom/metamoji/nt/pdfsave/PdfSave;->_src:Lcom/metamoji/pdf/PDFDocument;

    invoke-virtual {p1}, Lcom/metamoji/pdf/PDFDocument;->getPageCount()I

    move-result p1

    const/4 v0, 0x0

    invoke-static {v0, p1}, Lkotlin/ranges/RangesKt;->until(II)Lkotlin/ranges/IntRange;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    .line 134
    :cond_0
    iget-object v0, p0, Lcom/metamoji/nt/pdfsave/PdfSave;->_writer:Lcom/metamoji/nt/pdfsave/PdfWriter;

    .line 135
    new-instance v1, Lcom/metamoji/nt/pdfsave/PdfPdfCopy;

    iget-object v2, p0, Lcom/metamoji/nt/pdfsave/PdfSave;->_src:Lcom/metamoji/pdf/PDFDocument;

    iget-object v3, p0, Lcom/metamoji/nt/pdfsave/PdfSave;->_xref:Lcom/metamoji/nt/pdfsave/PdfXref;

    invoke-virtual {v0}, Lcom/metamoji/nt/pdfsave/PdfWriter;->getStream()Ljava/io/OutputStream;

    move-result-object v4

    iget-object v5, p0, Lcom/metamoji/nt/pdfsave/PdfSave;->_encrypt:Lcom/metamoji/nt/pdfsave/PdfEncrypt;

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/metamoji/nt/pdfsave/PdfPdfCopy;-><init>(Lcom/metamoji/pdf/PDFDocument;Lcom/metamoji/nt/pdfsave/PdfXref;Ljava/io/OutputStream;Lcom/metamoji/nt/pdfsave/PdfEncrypt;)V

    .line 136
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    check-cast v2, Ljava/util/List;

    .line 137
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v3

    .line 138
    iget-object v4, p0, Lcom/metamoji/nt/pdfsave/PdfSave;->_xref:Lcom/metamoji/nt/pdfsave/PdfXref;

    invoke-virtual {v4}, Lcom/metamoji/nt/pdfsave/PdfXref;->addObject()I

    move-result v4

    .line 139
    iget v5, p0, Lcom/metamoji/nt/pdfsave/PdfSave;->_objidPages:I

    iget-object v6, p0, Lcom/metamoji/nt/pdfsave/PdfSave;->_bank:Lcom/metamoji/nt/pdfsave/PdfPdf;

    invoke-virtual {v1, v4, v3, v5, v6}, Lcom/metamoji/nt/pdfsave/PdfPdfCopy;->savePage(IIILcom/metamoji/nt/pdfsave/PdfPdf;)V

    .line 140
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 143
    :cond_1
    iget p1, p0, Lcom/metamoji/nt/pdfsave/PdfSave;->_objidPages:I

    invoke-virtual {v0, p1}, Lcom/metamoji/nt/pdfsave/PdfWriter;->beginObject(I)I

    .line 145
    invoke-virtual {v0}, Lcom/metamoji/nt/pdfsave/PdfWriter;->beginDictionary()V

    .line 146
    const-string p1, "/Type/Pages"

    invoke-virtual {v0, p1}, Lcom/metamoji/nt/pdfsave/PdfWriter;->write(Ljava/lang/String;)V

    .line 147
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result p1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "/Count "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/metamoji/nt/pdfsave/PdfWriter;->write(Ljava/lang/String;)V

    .line 148
    const-string p1, "/Kids["

    invoke-virtual {v0, p1}, Lcom/metamoji/nt/pdfsave/PdfWriter;->write(Ljava/lang/String;)V

    .line 150
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const-string v1, ""

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    .line 151
    invoke-static {v2}, Lcom/metamoji/nt/pdfsave/PdfSaveToolKt;->OBJREF(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/metamoji/nt/pdfsave/PdfWriter;->write(Ljava/lang/String;)V

    .line 152
    const-string v1, " "

    goto :goto_1

    .line 154
    :cond_2
    const-string p1, "]"

    invoke-virtual {v0, p1}, Lcom/metamoji/nt/pdfsave/PdfWriter;->write(Ljava/lang/String;)V

    .line 155
    invoke-virtual {v0}, Lcom/metamoji/nt/pdfsave/PdfWriter;->endDictionary()V

    .line 157
    invoke-virtual {v0}, Lcom/metamoji/nt/pdfsave/PdfWriter;->endObject()V

    return-void
.end method

.method private final saveTrailer()V
    .locals 5

    .line 162
    iget-object v0, p0, Lcom/metamoji/nt/pdfsave/PdfSave;->_writer:Lcom/metamoji/nt/pdfsave/PdfWriter;

    .line 163
    const-string/jumbo v1, "trailer\n"

    invoke-virtual {v0, v1}, Lcom/metamoji/nt/pdfsave/PdfWriter;->write(Ljava/lang/String;)V

    .line 165
    invoke-virtual {v0}, Lcom/metamoji/nt/pdfsave/PdfWriter;->beginDictionary()V

    .line 166
    iget-object v1, p0, Lcom/metamoji/nt/pdfsave/PdfSave;->_xref:Lcom/metamoji/nt/pdfsave/PdfXref;

    invoke-virtual {v1}, Lcom/metamoji/nt/pdfsave/PdfXref;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "/Size "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/metamoji/nt/pdfsave/PdfWriter;->write(Ljava/lang/String;)V

    .line 167
    iget v1, p0, Lcom/metamoji/nt/pdfsave/PdfSave;->_objidRoot:I

    invoke-static {v1}, Lcom/metamoji/nt/pdfsave/PdfSaveToolKt;->OBJREF(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "/Root "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/metamoji/nt/pdfsave/PdfWriter;->write(Ljava/lang/String;)V

    .line 168
    iget v1, p0, Lcom/metamoji/nt/pdfsave/PdfSave;->_objidInfo:I

    invoke-static {v1}, Lcom/metamoji/nt/pdfsave/PdfSaveToolKt;->OBJREF(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "/Info "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/metamoji/nt/pdfsave/PdfWriter;->write(Ljava/lang/String;)V

    .line 169
    iget-object v1, p0, Lcom/metamoji/nt/pdfsave/PdfSave;->_fileid:[B

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-static {v1, v2, v3, v2}, Lcom/metamoji/nt/pdfsave/PdfSaveToolKt;->HEX$default([BLcom/metamoji/nt/pdfsave/PdfEncryptKey;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-object v4, p0, Lcom/metamoji/nt/pdfsave/PdfSave;->_fileid:[B

    invoke-static {v4, v2, v3, v2}, Lcom/metamoji/nt/pdfsave/PdfSaveToolKt;->HEX$default([BLcom/metamoji/nt/pdfsave/PdfEncryptKey;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "/ID["

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/metamoji/nt/pdfsave/PdfWriter;->write(Ljava/lang/String;)V

    .line 170
    iget v1, p0, Lcom/metamoji/nt/pdfsave/PdfSave;->_objidEncrypt:I

    if-eqz v1, :cond_0

    .line 171
    invoke-static {v1}, Lcom/metamoji/nt/pdfsave/PdfSaveToolKt;->OBJREF(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "/Encrypt "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/metamoji/nt/pdfsave/PdfWriter;->write(Ljava/lang/String;)V

    .line 173
    :cond_0
    invoke-virtual {v0}, Lcom/metamoji/nt/pdfsave/PdfWriter;->endDictionary()V

    .line 175
    const-string/jumbo v1, "startxref\n"

    invoke-virtual {v0, v1}, Lcom/metamoji/nt/pdfsave/PdfWriter;->write(Ljava/lang/String;)V

    .line 176
    iget-object v1, p0, Lcom/metamoji/nt/pdfsave/PdfSave;->_xref:Lcom/metamoji/nt/pdfsave/PdfXref;

    invoke-virtual {v1}, Lcom/metamoji/nt/pdfsave/PdfXref;->getStartxref()J

    move-result-wide v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/metamoji/nt/pdfsave/PdfWriter;->write(Ljava/lang/String;)V

    .line 178
    const-string v1, "%%EOF\n"

    invoke-virtual {v0, v1}, Lcom/metamoji/nt/pdfsave/PdfWriter;->write(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/metamoji/nt/pdfsave/PdfSave;->_src:Lcom/metamoji/pdf/PDFDocument;

    invoke-virtual {v0}, Lcom/metamoji/pdf/PDFDocument;->close()V

    .line 56
    iget-object v0, p0, Lcom/metamoji/nt/pdfsave/PdfSave;->_stream:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    return-void
.end method

.method public final save(Ljava/lang/String;)V
    .locals 2

    const-string/jumbo v0, "title"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-static {p0, p1, v0, v1, v0}, Lcom/metamoji/nt/pdfsave/PdfSave;->save$default(Lcom/metamoji/nt/pdfsave/PdfSave;Ljava/lang/String;Ljava/lang/Iterable;ILjava/lang/Object;)V

    return-void
.end method

.method public final save(Ljava/lang/String;Ljava/lang/Iterable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Iterable<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    const-string/jumbo v0, "title"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 60
    iget-object v0, p0, Lcom/metamoji/nt/pdfsave/PdfSave;->_src:Lcom/metamoji/pdf/PDFDocument;

    invoke-virtual {v0}, Lcom/metamoji/pdf/PDFDocument;->getVersion()I

    move-result v0

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lkotlin/ranges/RangesKt;->coerceAtLeast(II)I

    move-result v0

    .line 62
    invoke-direct {p0, v0}, Lcom/metamoji/nt/pdfsave/PdfSave;->saveHeader(I)V

    .line 63
    invoke-direct {p0, p2}, Lcom/metamoji/nt/pdfsave/PdfSave;->savePages(Ljava/lang/Iterable;)V

    .line 64
    invoke-direct {p0}, Lcom/metamoji/nt/pdfsave/PdfSave;->saveCatalog()V

    .line 65
    invoke-direct {p0, p1}, Lcom/metamoji/nt/pdfsave/PdfSave;->saveDocumentInformation(Ljava/lang/String;)V

    .line 66
    iget-object p1, p0, Lcom/metamoji/nt/pdfsave/PdfSave;->_encrypt:Lcom/metamoji/nt/pdfsave/PdfEncrypt;

    if-eqz p1, :cond_0

    iget-object p2, p0, Lcom/metamoji/nt/pdfsave/PdfSave;->_writer:Lcom/metamoji/nt/pdfsave/PdfWriter;

    invoke-virtual {p1, p2}, Lcom/metamoji/nt/pdfsave/PdfEncrypt;->save(Lcom/metamoji/nt/pdfsave/PdfWriter;)I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput p1, p0, Lcom/metamoji/nt/pdfsave/PdfSave;->_objidEncrypt:I

    .line 67
    iget-object p1, p0, Lcom/metamoji/nt/pdfsave/PdfSave;->_bank:Lcom/metamoji/nt/pdfsave/PdfPdf;

    if-eqz p1, :cond_1

    iget-object p2, p0, Lcom/metamoji/nt/pdfsave/PdfSave;->_writer:Lcom/metamoji/nt/pdfsave/PdfWriter;

    invoke-virtual {p1, p2}, Lcom/metamoji/nt/pdfsave/PdfPdf;->save(Lcom/metamoji/nt/pdfsave/PdfWriter;)V

    .line 69
    :cond_1
    iget-object p1, p0, Lcom/metamoji/nt/pdfsave/PdfSave;->_xref:Lcom/metamoji/nt/pdfsave/PdfXref;

    iget-object p2, p0, Lcom/metamoji/nt/pdfsave/PdfSave;->_writer:Lcom/metamoji/nt/pdfsave/PdfWriter;

    invoke-virtual {p1, p2}, Lcom/metamoji/nt/pdfsave/PdfXref;->save(Lcom/metamoji/nt/pdfsave/PdfWriter;)V

    .line 70
    invoke-direct {p0}, Lcom/metamoji/nt/pdfsave/PdfSave;->saveTrailer()V

    .line 72
    invoke-virtual {p0}, Lcom/metamoji/nt/pdfsave/PdfSave;->close()V

    .line 74
    iget-object p1, p0, Lcom/metamoji/nt/pdfsave/PdfSave;->_bank:Lcom/metamoji/nt/pdfsave/PdfPdf;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/metamoji/nt/pdfsave/PdfPdf;->getMaxVer()I

    move-result p1

    if-le p1, v0, :cond_2

    .line 75
    new-instance p1, Ljava/io/RandomAccessFile;

    iget-object p2, p0, Lcom/metamoji/nt/pdfsave/PdfSave;->_output:Ljava/io/File;

    const-string/jumbo v0, "rw"

    invoke-direct {p1, p2, v0}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    check-cast p1, Ljava/io/Closeable;

    :try_start_0
    move-object p2, p1

    check-cast p2, Ljava/io/RandomAccessFile;

    const-wide/16 v0, 0x7

    .line 76
    invoke-virtual {p2, v0, v1}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 77
    iget-object v0, p0, Lcom/metamoji/nt/pdfsave/PdfSave;->_bank:Lcom/metamoji/nt/pdfsave/PdfPdf;

    invoke-virtual {v0}, Lcom/metamoji/nt/pdfsave/PdfPdf;->getMaxVer()I

    move-result v0

    const/16 v1, 0x9

    invoke-static {v0, v1}, Lkotlin/ranges/RangesKt;->coerceAtMost(II)I

    move-result v0

    add-int/lit8 v0, v0, 0x30

    invoke-virtual {p2, v0}, Ljava/io/RandomAccessFile;->writeByte(I)V

    .line 78
    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p2, 0x0

    .line 75
    invoke-static {p1, p2}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-void

    :catchall_0
    move-exception p2

    :try_start_1
    throw p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v0

    invoke-static {p1, p2}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0

    :cond_2
    return-void
.end method
