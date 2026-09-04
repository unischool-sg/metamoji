.class public final Lcom/metamoji/pdf/PDFUtil;
.super Ljava/lang/Object;
.source "PDFUtil.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPDFUtil.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PDFUtil.kt\ncom/metamoji/pdf/PDFUtil\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,98:1\n1563#2:99\n1634#2,3:100\n*S KotlinDebug\n*F\n+ 1 PDFUtil.kt\ncom/metamoji/pdf/PDFUtil\n*L\n40#1:99\n40#1:100,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000N\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0012\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0007\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0010\u001c\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u000e\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\nJ\u000e\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000eJ&\u0010\u000f\u001a\u00020\u000c2\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u00112\u0006\u0010\u0013\u001a\u00020\u00112\u0006\u0010\u0014\u001a\u00020\u0011J\u0014\u0010\u0015\u001a\u00020\u00162\u000c\u0010\r\u001a\u0008\u0012\u0004\u0012\u00020\u000e0\u0017J\u001c\u0010\u0018\u001a\u00020\u00192\u0006\u0010\u001a\u001a\u00020\u001b2\n\u0008\u0002\u0010\u001c\u001a\u0004\u0018\u00010\u0008H\u0007R\u0016\u0010\u0004\u001a\n \u0006*\u0004\u0018\u00010\u00050\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001d"
    }
    d2 = {
        "Lcom/metamoji/pdf/PDFUtil;",
        "",
        "<init>",
        "()V",
        "PDFDocEncoding",
        "Ljava/nio/charset/Charset;",
        "kotlin.jvm.PlatformType",
        "getDisplayString",
        "",
        "data",
        "",
        "rectFromArray",
        "Landroid/graphics/RectF;",
        "arr",
        "Lcom/metamoji/pdf/core/PDFObj;",
        "makeRect",
        "x",
        "",
        "y",
        "w",
        "h",
        "matrixFromArray",
        "Landroid/graphics/Matrix;",
        "",
        "loadPdf",
        "Lcom/metamoji/pdf/PDFDocument;",
        "stream",
        "Ljava/io/RandomAccessFile;",
        "password",
        "pdf"
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
.field public static final INSTANCE:Lcom/metamoji/pdf/PDFUtil;

.field private static final PDFDocEncoding:Ljava/nio/charset/Charset;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/metamoji/pdf/PDFUtil;

    invoke-direct {v0}, Lcom/metamoji/pdf/PDFUtil;-><init>()V

    sput-object v0, Lcom/metamoji/pdf/PDFUtil;->INSTANCE:Lcom/metamoji/pdf/PDFUtil;

    .line 14
    const-string/jumbo v0, "windows-1252"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lcom/metamoji/pdf/PDFUtil;->PDFDocEncoding:Ljava/nio/charset/Charset;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final loadPdf(Ljava/io/RandomAccessFile;Ljava/lang/String;)Lcom/metamoji/pdf/PDFDocument;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string/jumbo v0, "stream"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    new-instance v0, Lcom/metamoji/pdf/PDFFile;

    invoke-direct {v0, p0}, Lcom/metamoji/pdf/PDFFile;-><init>(Ljava/io/RandomAccessFile;)V

    .line 46
    new-instance p0, Lcom/metamoji/pdf/PDFDocument;

    check-cast v0, Lcom/metamoji/pdf/IPDFFile;

    invoke-direct {p0, v0}, Lcom/metamoji/pdf/PDFDocument;-><init>(Lcom/metamoji/pdf/IPDFFile;)V

    .line 47
    invoke-virtual {p0}, Lcom/metamoji/pdf/PDFDocument;->load()V

    if-eqz p1, :cond_0

    .line 48
    move-object v0, p1

    check-cast v0, Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 49
    invoke-virtual {p0, p1}, Lcom/metamoji/pdf/PDFDocument;->unlock(Ljava/lang/String;)Lcom/metamoji/pdf/PDFDocument$AuthState;

    .line 51
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/pdf/PDFDocument;->isLocked()Z

    move-result p1

    if-nez p1, :cond_1

    return-object p0

    .line 52
    :cond_1
    invoke-virtual {p0}, Lcom/metamoji/pdf/PDFDocument;->close()V

    .line 53
    new-instance p0, Ljava/lang/Exception;

    const-string p1, "password needed"

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic loadPdf$default(Ljava/io/RandomAccessFile;Ljava/lang/String;ILjava/lang/Object;)Lcom/metamoji/pdf/PDFDocument;
    .locals 0

    and-int/lit8 p2, p2, 0x2

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    .line 43
    :cond_0
    invoke-static {p0, p1}, Lcom/metamoji/pdf/PDFUtil;->loadPdf(Ljava/io/RandomAccessFile;Ljava/lang/String;)Lcom/metamoji/pdf/PDFDocument;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final getDisplayString([B)Ljava/lang/String;
    .locals 3

    const-string v0, "data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    array-length v0, p1

    if-nez v0, :cond_0

    const-string p1, ""

    return-object p1

    .line 18
    :cond_0
    array-length v0, p1

    const/4 v1, 0x2

    if-lt v0, v1, :cond_1

    const/4 v0, 0x0

    aget-byte v0, p1, v0

    const/4 v1, -0x2

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    aget-byte v1, p1, v0

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    new-instance v1, Ljava/lang/String;

    .line 19
    sget-object v2, Lkotlin/text/Charsets;->UTF_16BE:Ljava/nio/charset/Charset;

    invoke-direct {v1, p1, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-virtual {v1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v0, "substring(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1

    .line 21
    :cond_1
    sget-object v0, Lcom/metamoji/pdf/PDFUtil;->PDFDocEncoding:Ljava/nio/charset/Charset;

    const-string v1, "PDFDocEncoding"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p1, v0}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object v1
.end method

.method public final makeRect(FFFF)Landroid/graphics/RectF;
    .locals 2

    const/4 v0, 0x0

    cmpl-float v1, p3, v0

    if-ltz v1, :cond_0

    .line 34
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    add-float/2addr p1, p3

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-static {v1, p1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    goto :goto_0

    :cond_0
    add-float/2addr p3, p1

    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p3

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-static {p3, p1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    :goto_0
    invoke-virtual {p1}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Number;

    invoke-virtual {p3}, Ljava/lang/Number;->floatValue()F

    move-result p3

    invoke-virtual {p1}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result p1

    cmpl-float v0, p4, v0

    if-ltz v0, :cond_1

    .line 35
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    add-float/2addr p2, p4

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    invoke-static {v0, p2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p2

    goto :goto_1

    :cond_1
    add-float/2addr p4, p2

    invoke-static {p4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p4

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    invoke-static {p4, p2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p2

    :goto_1
    invoke-virtual {p2}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/Number;

    invoke-virtual {p4}, Ljava/lang/Number;->floatValue()F

    move-result p4

    invoke-virtual {p2}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->floatValue()F

    move-result p2

    .line 36
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0, p3, p4, p1, p2}, Landroid/graphics/RectF;-><init>(FFFF)V

    return-object v0
.end method

.method public final matrixFromArray(Ljava/lang/Iterable;)Landroid/graphics/Matrix;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/metamoji/pdf/core/PDFObj;",
            ">;)",
            "Landroid/graphics/Matrix;"
        }
    .end annotation

    const-string v0, "arr"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    sget-object v0, Lcom/metamoji/pdf/core/MatrixUtil;->INSTANCE:Lcom/metamoji/pdf/core/MatrixUtil;

    .line 99
    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {p1, v2}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v1, Ljava/util/Collection;

    .line 100
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 101
    check-cast v2, Lcom/metamoji/pdf/core/PDFObj;

    .line 40
    invoke-virtual {v2}, Lcom/metamoji/pdf/core/PDFObj;->floatVal()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    .line 101
    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 102
    :cond_0
    check-cast v1, Ljava/util/List;

    .line 40
    invoke-virtual {v0, v1}, Lcom/metamoji/pdf/core/MatrixUtil;->matrix(Ljava/util/List;)Landroid/graphics/Matrix;

    move-result-object p1

    return-object p1
.end method

.method public final rectFromArray(Lcom/metamoji/pdf/core/PDFObj;)Landroid/graphics/RectF;
    .locals 4

    const-string v0, "arr"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 26
    invoke-virtual {p1, v0}, Lcom/metamoji/pdf/core/PDFObj;->get(I)Lcom/metamoji/pdf/core/PDFObj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/pdf/core/PDFObj;->floatVal()F

    move-result v0

    const/4 v1, 0x1

    .line 27
    invoke-virtual {p1, v1}, Lcom/metamoji/pdf/core/PDFObj;->get(I)Lcom/metamoji/pdf/core/PDFObj;

    move-result-object v1

    invoke-virtual {v1}, Lcom/metamoji/pdf/core/PDFObj;->floatVal()F

    move-result v1

    const/4 v2, 0x2

    .line 28
    invoke-virtual {p1, v2}, Lcom/metamoji/pdf/core/PDFObj;->get(I)Lcom/metamoji/pdf/core/PDFObj;

    move-result-object v2

    invoke-virtual {v2}, Lcom/metamoji/pdf/core/PDFObj;->floatVal()F

    move-result v2

    const/4 v3, 0x3

    .line 29
    invoke-virtual {p1, v3}, Lcom/metamoji/pdf/core/PDFObj;->get(I)Lcom/metamoji/pdf/core/PDFObj;

    move-result-object p1

    invoke-virtual {p1}, Lcom/metamoji/pdf/core/PDFObj;->floatVal()F

    move-result p1

    sub-float/2addr v2, v0

    sub-float/2addr p1, v1

    .line 30
    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/metamoji/pdf/PDFUtil;->makeRect(FFFF)Landroid/graphics/RectF;

    move-result-object p1

    return-object p1
.end method
