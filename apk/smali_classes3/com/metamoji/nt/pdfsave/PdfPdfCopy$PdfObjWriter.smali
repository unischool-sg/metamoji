.class final Lcom/metamoji/nt/pdfsave/PdfPdfCopy$PdfObjWriter;
.super Lcom/metamoji/nt/pdfsave/PdfWriter;
.source "PdfSavePdf.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/nt/pdfsave/PdfPdfCopy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "PdfObjWriter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/nt/pdfsave/PdfPdfCopy$PdfObjWriter$Companion;,
        Lcom/metamoji/nt/pdfsave/PdfPdfCopy$PdfObjWriter$WhenMappings;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000P\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\"\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0002\u0018\u0000 \u001d2\u00020\u0001:\u0001\u001dB#\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\u000e\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\rJ\u0010\u0010\u000e\u001a\u00020\u000b2\u0006\u0010\u000f\u001a\u00020\u0010H\u0002J \u0010\u0011\u001a\u00020\u000b2\u0006\u0010\u0012\u001a\u00020\r2\u0010\u0008\u0002\u0010\u0013\u001a\n\u0012\u0004\u0012\u00020\u0015\u0018\u00010\u0014J \u0010\u0016\u001a\u00020\u000b2\u0006\u0010\u0012\u001a\u00020\r2\u0010\u0008\u0002\u0010\u0013\u001a\n\u0012\u0004\u0012\u00020\u0015\u0018\u00010\u0014J\u000e\u0010\u0017\u001a\u00020\u000b2\u0006\u0010\u0018\u001a\u00020\u0019J\u000e\u0010\u001a\u001a\u00020\u000b2\u0006\u0010\u001b\u001a\u00020\u001cR\u0010\u0010\u0006\u001a\u0004\u0018\u00010\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001e"
    }
    d2 = {
        "Lcom/metamoji/nt/pdfsave/PdfPdfCopy$PdfObjWriter;",
        "Lcom/metamoji/nt/pdfsave/PdfWriter;",
        "stream",
        "Ljava/io/OutputStream;",
        "encrypt",
        "Lcom/metamoji/nt/pdfsave/PdfEncrypt;",
        "_copy",
        "Lcom/metamoji/nt/pdfsave/PdfPdfCopy;",
        "<init>",
        "(Ljava/io/OutputStream;Lcom/metamoji/nt/pdfsave/PdfEncrypt;Lcom/metamoji/nt/pdfsave/PdfPdfCopy;)V",
        "writeObj",
        "",
        "obj",
        "Lcom/metamoji/pdf/core/PDFObj;",
        "writeArray",
        "arr",
        "Lcom/metamoji/pdf/core/PDFArray;",
        "writeDictionary",
        "dic",
        "exclude",
        "",
        "",
        "writeDictionaryInner",
        "writeInst",
        "inst",
        "Lcom/metamoji/pdf/content/Instruction;",
        "transform",
        "m",
        "Landroid/graphics/Matrix;",
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
.field public static final Companion:Lcom/metamoji/nt/pdfsave/PdfPdfCopy$PdfObjWriter$Companion;

.field private static final NUMBER_FORMAT:Ljava/text/DecimalFormat;


# instance fields
.field private final _copy:Lcom/metamoji/nt/pdfsave/PdfPdfCopy;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/metamoji/nt/pdfsave/PdfPdfCopy$PdfObjWriter$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/metamoji/nt/pdfsave/PdfPdfCopy$PdfObjWriter$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/metamoji/nt/pdfsave/PdfPdfCopy$PdfObjWriter;->Companion:Lcom/metamoji/nt/pdfsave/PdfPdfCopy$PdfObjWriter$Companion;

    .line 572
    const-string v0, "0.##########"

    invoke-static {v0}, Lcom/metamoji/nt/pdfsave/PdfSavePdfKt;->access$getFormat(Ljava/lang/String;)Ljava/text/DecimalFormat;

    move-result-object v0

    sput-object v0, Lcom/metamoji/nt/pdfsave/PdfPdfCopy$PdfObjWriter;->NUMBER_FORMAT:Ljava/text/DecimalFormat;

    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;Lcom/metamoji/nt/pdfsave/PdfEncrypt;Lcom/metamoji/nt/pdfsave/PdfPdfCopy;)V
    .locals 1

    const-string/jumbo v0, "stream"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p3, :cond_0

    .line 568
    invoke-static {p3}, Lcom/metamoji/nt/pdfsave/PdfPdfCopy;->access$get_xref$p(Lcom/metamoji/nt/pdfsave/PdfPdfCopy;)Lcom/metamoji/nt/pdfsave/PdfXref;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0, p1, v0, p2}, Lcom/metamoji/nt/pdfsave/PdfWriter;-><init>(Ljava/io/OutputStream;Lcom/metamoji/nt/pdfsave/PdfXref;Lcom/metamoji/nt/pdfsave/PdfEncrypt;)V

    .line 567
    iput-object p3, p0, Lcom/metamoji/nt/pdfsave/PdfPdfCopy$PdfObjWriter;->_copy:Lcom/metamoji/nt/pdfsave/PdfPdfCopy;

    return-void
.end method

.method public static final synthetic access$getNUMBER_FORMAT$cp()Ljava/text/DecimalFormat;
    .locals 1

    .line 566
    sget-object v0, Lcom/metamoji/nt/pdfsave/PdfPdfCopy$PdfObjWriter;->NUMBER_FORMAT:Ljava/text/DecimalFormat;

    return-object v0
.end method

.method private final writeArray(Lcom/metamoji/pdf/core/PDFArray;)V
    .locals 3

    .line 596
    const-string v0, "["

    invoke-virtual {p0, v0}, Lcom/metamoji/nt/pdfsave/PdfPdfCopy$PdfObjWriter;->write(Ljava/lang/String;)V

    .line 598
    invoke-virtual {p1}, Lcom/metamoji/pdf/core/PDFArray;->getCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    if-eqz v1, :cond_0

    .line 600
    const-string v2, " "

    invoke-virtual {p0, v2}, Lcom/metamoji/nt/pdfsave/PdfPdfCopy$PdfObjWriter;->write(Ljava/lang/String;)V

    .line 601
    :cond_0
    invoke-virtual {p1, v1}, Lcom/metamoji/pdf/core/PDFArray;->getUnresolved(I)Lcom/metamoji/pdf/core/PDFObj;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/metamoji/nt/pdfsave/PdfPdfCopy$PdfObjWriter;->writeObj(Lcom/metamoji/pdf/core/PDFObj;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 604
    :cond_1
    const-string p1, "]"

    invoke-virtual {p0, p1}, Lcom/metamoji/nt/pdfsave/PdfPdfCopy$PdfObjWriter;->write(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic writeDictionary$default(Lcom/metamoji/nt/pdfsave/PdfPdfCopy$PdfObjWriter;Lcom/metamoji/pdf/core/PDFObj;Ljava/util/Set;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 607
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/metamoji/nt/pdfsave/PdfPdfCopy$PdfObjWriter;->writeDictionary(Lcom/metamoji/pdf/core/PDFObj;Ljava/util/Set;)V

    return-void
.end method

.method public static synthetic writeDictionaryInner$default(Lcom/metamoji/nt/pdfsave/PdfPdfCopy$PdfObjWriter;Lcom/metamoji/pdf/core/PDFObj;Ljava/util/Set;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 613
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/metamoji/nt/pdfsave/PdfPdfCopy$PdfObjWriter;->writeDictionaryInner(Lcom/metamoji/pdf/core/PDFObj;Ljava/util/Set;)V

    return-void
.end method


# virtual methods
.method public final transform(Landroid/graphics/Matrix;)V
    .locals 7

    const-string v0, "m"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 655
    invoke-static {p1}, Lcom/metamoji/pdf/core/MatrixUtilKt;->values(Landroid/graphics/Matrix;)[F

    move-result-object p1

    .line 656
    sget-object v0, Lcom/metamoji/nt/pdfsave/PdfPdfCopy;->Companion:Lcom/metamoji/nt/pdfsave/PdfPdfCopy$Companion;

    const/4 v1, 0x0

    aget v1, p1, v1

    invoke-static {v0, v1}, Lcom/metamoji/nt/pdfsave/PdfPdfCopy$Companion;->access$MATRIX(Lcom/metamoji/nt/pdfsave/PdfPdfCopy$Companion;F)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/metamoji/nt/pdfsave/PdfPdfCopy;->Companion:Lcom/metamoji/nt/pdfsave/PdfPdfCopy$Companion;

    const/4 v2, 0x3

    aget v2, p1, v2

    invoke-static {v1, v2}, Lcom/metamoji/nt/pdfsave/PdfPdfCopy$Companion;->access$MATRIX(Lcom/metamoji/nt/pdfsave/PdfPdfCopy$Companion;F)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/metamoji/nt/pdfsave/PdfPdfCopy;->Companion:Lcom/metamoji/nt/pdfsave/PdfPdfCopy$Companion;

    const/4 v3, 0x1

    aget v3, p1, v3

    invoke-static {v2, v3}, Lcom/metamoji/nt/pdfsave/PdfPdfCopy$Companion;->access$MATRIX(Lcom/metamoji/nt/pdfsave/PdfPdfCopy$Companion;F)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/metamoji/nt/pdfsave/PdfPdfCopy;->Companion:Lcom/metamoji/nt/pdfsave/PdfPdfCopy$Companion;

    const/4 v4, 0x4

    aget v4, p1, v4

    invoke-static {v3, v4}, Lcom/metamoji/nt/pdfsave/PdfPdfCopy$Companion;->access$MATRIX(Lcom/metamoji/nt/pdfsave/PdfPdfCopy$Companion;F)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/metamoji/nt/pdfsave/PdfPdfCopy;->Companion:Lcom/metamoji/nt/pdfsave/PdfPdfCopy$Companion;

    const/4 v5, 0x2

    aget v5, p1, v5

    invoke-static {v4, v5}, Lcom/metamoji/nt/pdfsave/PdfPdfCopy$Companion;->access$MATRIX(Lcom/metamoji/nt/pdfsave/PdfPdfCopy$Companion;F)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/metamoji/nt/pdfsave/PdfPdfCopy;->Companion:Lcom/metamoji/nt/pdfsave/PdfPdfCopy$Companion;

    const/4 v6, 0x5

    aget p1, p1, v6

    invoke-static {v5, p1}, Lcom/metamoji/nt/pdfsave/PdfPdfCopy$Companion;->access$MATRIX(Lcom/metamoji/nt/pdfsave/PdfPdfCopy$Companion;F)Ljava/lang/String;

    move-result-object p1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, " "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " cm\n"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/metamoji/nt/pdfsave/PdfPdfCopy$PdfObjWriter;->write(Ljava/lang/String;)V

    return-void
.end method

.method public final writeDictionary(Lcom/metamoji/pdf/core/PDFObj;Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/pdf/core/PDFObj;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "dic"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 608
    invoke-virtual {p0}, Lcom/metamoji/nt/pdfsave/PdfPdfCopy$PdfObjWriter;->beginDictionary()V

    .line 609
    invoke-virtual {p0, p1, p2}, Lcom/metamoji/nt/pdfsave/PdfPdfCopy$PdfObjWriter;->writeDictionaryInner(Lcom/metamoji/pdf/core/PDFObj;Ljava/util/Set;)V

    .line 610
    invoke-virtual {p0}, Lcom/metamoji/nt/pdfsave/PdfPdfCopy$PdfObjWriter;->endDictionary()V

    return-void
.end method

.method public final writeDictionaryInner(Lcom/metamoji/pdf/core/PDFObj;Ljava/util/Set;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/pdf/core/PDFObj;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "dic"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 614
    invoke-virtual {p1}, Lcom/metamoji/pdf/core/PDFObj;->getDic()Ljava/util/Map;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_2

    .line 615
    :cond_0
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/metamoji/pdf/core/PDFObj;

    .line 616
    invoke-virtual {v0}, Lcom/metamoji/pdf/core/PDFObj;->isNull()Z

    move-result v2

    if-nez v2, :cond_1

    if-eqz p2, :cond_2

    .line 617
    invoke-interface {p2, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 619
    :cond_2
    invoke-static {v1}, Lcom/metamoji/nt/pdfsave/PdfSaveToolKt;->NAME(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/metamoji/nt/pdfsave/PdfPdfCopy$PdfObjWriter;->write(Ljava/lang/String;)V

    .line 620
    invoke-virtual {v0}, Lcom/metamoji/pdf/core/PDFObj;->getType()Lcom/metamoji/pdf/core/PDFObj$Type;

    move-result-object v1

    sget-object v2, Lcom/metamoji/nt/pdfsave/PdfPdfCopy$PdfObjWriter$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v1}, Lcom/metamoji/pdf/core/PDFObj$Type;->ordinal()I

    move-result v1

    aget v1, v2, v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_3

    const/4 v2, 0x2

    if-eq v1, v2, :cond_3

    const/4 v2, 0x3

    if-eq v1, v2, :cond_3

    const/4 v2, 0x4

    if-eq v1, v2, :cond_3

    const/16 v2, 0xa

    if-eq v1, v2, :cond_3

    goto :goto_1

    .line 626
    :cond_3
    const-string v1, " "

    invoke-virtual {p0, v1}, Lcom/metamoji/nt/pdfsave/PdfPdfCopy$PdfObjWriter;->write(Ljava/lang/String;)V

    .line 629
    :goto_1
    invoke-virtual {p0, v0}, Lcom/metamoji/nt/pdfsave/PdfPdfCopy$PdfObjWriter;->writeObj(Lcom/metamoji/pdf/core/PDFObj;)V

    goto :goto_0

    :cond_4
    :goto_2
    return-void
.end method

.method public final writeInst(Lcom/metamoji/pdf/content/Instruction;)V
    .locals 5

    const-string v0, "inst"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 634
    invoke-virtual {p1}, Lcom/metamoji/pdf/content/Instruction;->getOp()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BI"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 636
    invoke-virtual {p1}, Lcom/metamoji/pdf/content/Instruction;->getArgs()Ljava/util/List;

    move-result-object p1

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/metamoji/pdf/core/PDFObj;

    .line 637
    const-string v1, "BI\n"

    invoke-virtual {p0, v1}, Lcom/metamoji/nt/pdfsave/PdfPdfCopy$PdfObjWriter;->write(Ljava/lang/String;)V

    const/4 v1, 0x0

    const/4 v2, 0x2

    .line 638
    invoke-static {p0, p1, v1, v2, v1}, Lcom/metamoji/nt/pdfsave/PdfPdfCopy$PdfObjWriter;->writeDictionaryInner$default(Lcom/metamoji/nt/pdfsave/PdfPdfCopy$PdfObjWriter;Lcom/metamoji/pdf/core/PDFObj;Ljava/util/Set;ILjava/lang/Object;)V

    .line 639
    const-string v3, "\nID\n"

    invoke-virtual {p0, v3}, Lcom/metamoji/nt/pdfsave/PdfPdfCopy$PdfObjWriter;->write(Ljava/lang/String;)V

    const/4 v3, -0x2

    .line 640
    invoke-virtual {p1, v3}, Lcom/metamoji/pdf/core/PDFObj;->openStream(I)Lcom/metamoji/pdf/core/PDFInputStream;

    move-result-object p1

    check-cast p1, Ljava/io/Closeable;

    :try_start_0
    move-object v3, p1

    check-cast v3, Lcom/metamoji/pdf/core/PDFInputStream;

    .line 641
    check-cast v3, Ljava/io/InputStream;

    invoke-virtual {p0}, Lcom/metamoji/nt/pdfsave/PdfPdfCopy$PdfObjWriter;->get_stream()Ljava/io/OutputStream;

    move-result-object v4

    invoke-static {v3, v4, v0, v2, v1}, Lkotlin/io/ByteStreamsKt;->copyTo$default(Ljava/io/InputStream;Ljava/io/OutputStream;IILjava/lang/Object;)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 640
    invoke-static {p1, v1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 643
    const-string p1, "\nEI\n"

    invoke-virtual {p0, p1}, Lcom/metamoji/nt/pdfsave/PdfPdfCopy$PdfObjWriter;->write(Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception v0

    .line 640
    :try_start_1
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v1

    invoke-static {p1, v0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v1

    .line 645
    :cond_0
    invoke-virtual {p1}, Lcom/metamoji/pdf/content/Instruction;->getArgs()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/metamoji/pdf/core/PDFObj;

    .line 646
    invoke-virtual {p0, v1}, Lcom/metamoji/nt/pdfsave/PdfPdfCopy$PdfObjWriter;->writeObj(Lcom/metamoji/pdf/core/PDFObj;)V

    .line 647
    const-string v1, " "

    invoke-virtual {p0, v1}, Lcom/metamoji/nt/pdfsave/PdfPdfCopy$PdfObjWriter;->write(Ljava/lang/String;)V

    goto :goto_0

    .line 649
    :cond_1
    invoke-virtual {p1}, Lcom/metamoji/pdf/content/Instruction;->getOp()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/metamoji/nt/pdfsave/PdfPdfCopy$PdfObjWriter;->write(Ljava/lang/String;)V

    .line 650
    const-string p1, "\n"

    invoke-virtual {p0, p1}, Lcom/metamoji/nt/pdfsave/PdfPdfCopy$PdfObjWriter;->write(Ljava/lang/String;)V

    return-void
.end method

.method public final writeObj(Lcom/metamoji/pdf/core/PDFObj;)V
    .locals 3

    const-string v0, "obj"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 576
    invoke-virtual {p1}, Lcom/metamoji/pdf/core/PDFObj;->getType()Lcom/metamoji/pdf/core/PDFObj$Type;

    move-result-object v0

    sget-object v1, Lcom/metamoji/nt/pdfsave/PdfPdfCopy$PdfObjWriter$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Lcom/metamoji/pdf/core/PDFObj$Type;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const-string v1, "null"

    packed-switch v0, :pswitch_data_0

    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    .line 586
    :pswitch_0
    iget-object v0, p0, Lcom/metamoji/nt/pdfsave/PdfPdfCopy$PdfObjWriter;->_copy:Lcom/metamoji/nt/pdfsave/PdfPdfCopy;

    if-nez v0, :cond_0

    .line 587
    invoke-virtual {p0, v1}, Lcom/metamoji/nt/pdfsave/PdfPdfCopy$PdfObjWriter;->write(Ljava/lang/String;)V

    return-void

    .line 589
    :cond_0
    check-cast p1, Lcom/metamoji/pdf/core/PDFRef;

    invoke-static {v0, p1}, Lcom/metamoji/nt/pdfsave/PdfPdfCopy;->access$addReference(Lcom/metamoji/nt/pdfsave/PdfPdfCopy;Lcom/metamoji/pdf/core/PDFRef;)I

    move-result p1

    invoke-static {p1}, Lcom/metamoji/nt/pdfsave/PdfSaveToolKt;->OBJREF(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/metamoji/nt/pdfsave/PdfPdfCopy$PdfObjWriter;->write(Ljava/lang/String;)V

    return-void

    :pswitch_1
    const/4 v0, 0x2

    const/4 v1, 0x0

    .line 584
    invoke-static {p0, p1, v1, v0, v1}, Lcom/metamoji/nt/pdfsave/PdfPdfCopy$PdfObjWriter;->writeDictionary$default(Lcom/metamoji/nt/pdfsave/PdfPdfCopy$PdfObjWriter;Lcom/metamoji/pdf/core/PDFObj;Ljava/util/Set;ILjava/lang/Object;)V

    return-void

    .line 583
    :pswitch_2
    check-cast p1, Lcom/metamoji/pdf/core/PDFArray;

    invoke-direct {p0, p1}, Lcom/metamoji/nt/pdfsave/PdfPdfCopy$PdfObjWriter;->writeArray(Lcom/metamoji/pdf/core/PDFArray;)V

    return-void

    .line 582
    :pswitch_3
    invoke-virtual {p1}, Lcom/metamoji/pdf/core/PDFObj;->name()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/metamoji/nt/pdfsave/PdfSaveToolKt;->NAME(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/metamoji/nt/pdfsave/PdfPdfCopy$PdfObjWriter;->write(Ljava/lang/String;)V

    return-void

    .line 581
    :pswitch_4
    invoke-virtual {p1}, Lcom/metamoji/pdf/core/PDFObj;->stringVal()[B

    move-result-object p1

    invoke-virtual {p0}, Lcom/metamoji/nt/pdfsave/PdfPdfCopy$PdfObjWriter;->getKey()Lcom/metamoji/nt/pdfsave/PdfEncryptKey;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/metamoji/nt/pdfsave/PdfSaveToolKt;->BINARY([BLcom/metamoji/nt/pdfsave/PdfEncryptKey;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/metamoji/nt/pdfsave/PdfPdfCopy$PdfObjWriter;->write(Ljava/lang/String;)V

    return-void

    .line 580
    :pswitch_5
    sget-object v0, Lcom/metamoji/nt/pdfsave/PdfPdfCopy$PdfObjWriter;->NUMBER_FORMAT:Ljava/text/DecimalFormat;

    invoke-virtual {p1}, Lcom/metamoji/pdf/core/PDFObj;->doubleVal()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object p1

    const-string v0, "format(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/metamoji/nt/pdfsave/PdfPdfCopy$PdfObjWriter;->write(Ljava/lang/String;)V

    return-void

    .line 579
    :pswitch_6
    invoke-virtual {p1}, Lcom/metamoji/pdf/core/PDFObj;->intVal()I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/metamoji/nt/pdfsave/PdfPdfCopy$PdfObjWriter;->write(Ljava/lang/String;)V

    return-void

    .line 578
    :pswitch_7
    invoke-virtual {p1}, Lcom/metamoji/pdf/core/PDFObj;->boolVal()Z

    move-result p1

    if-eqz p1, :cond_1

    const-string/jumbo p1, "true"

    goto :goto_0

    :cond_1
    const-string p1, "false"

    :goto_0
    invoke-virtual {p0, p1}, Lcom/metamoji/nt/pdfsave/PdfPdfCopy$PdfObjWriter;->write(Ljava/lang/String;)V

    return-void

    .line 577
    :pswitch_8
    invoke-virtual {p0, v1}, Lcom/metamoji/nt/pdfsave/PdfPdfCopy$PdfObjWriter;->write(Ljava/lang/String;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
