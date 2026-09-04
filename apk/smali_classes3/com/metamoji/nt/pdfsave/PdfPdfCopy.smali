.class public final Lcom/metamoji/nt/pdfsave/PdfPdfCopy;
.super Ljava/lang/Object;
.source "PdfSavePdf.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/nt/pdfsave/PdfPdfCopy$Companion;,
        Lcom/metamoji/nt/pdfsave/PdfPdfCopy$MarkedInfo;,
        Lcom/metamoji/nt/pdfsave/PdfPdfCopy$MarkerInfo;,
        Lcom/metamoji/nt/pdfsave/PdfPdfCopy$PdfObjWriter;,
        Lcom/metamoji/nt/pdfsave/PdfPdfCopy$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPdfSavePdf.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PdfSavePdf.kt\ncom/metamoji/nt/pdfsave/PdfPdfCopy\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,660:1\n1586#2:661\n1661#2,3:662\n1#3:665\n*S KotlinDebug\n*F\n+ 1 PdfSavePdf.kt\ncom/metamoji/nt/pdfsave/PdfPdfCopy\n*L\n272#1:661\n272#1:662,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0094\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010%\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010!\n\u0000\n\u0002\u0010#\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0018\u0000 E2\u00020\u0001:\u0004EFGHB)\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0008\u0010\u0008\u001a\u0004\u0018\u00010\t\u00a2\u0006\u0004\u0008\n\u0010\u000bJ,\u0010\u001d\u001a\u00020\u001e2\u0006\u0010\u001f\u001a\u00020\u00132\u0006\u0010 \u001a\u00020\u00132\u0008\u0008\u0002\u0010!\u001a\u00020\u00132\n\u0008\u0002\u0010\"\u001a\u0004\u0018\u00010#J\u001c\u0010$\u001a\u00020\u001e2\u0006\u0010%\u001a\u00020&2\n\u0008\u0002\u0010\"\u001a\u0004\u0018\u00010#H\u0002J\u0010\u0010\'\u001a\u00020\u001e2\u0006\u0010%\u001a\u00020&H\u0002J\u001c\u0010(\u001a\u000e\u0012\u0004\u0012\u00020\u0013\u0012\u0004\u0012\u00020\u00130\u00122\u0006\u0010%\u001a\u00020&H\u0002J\u0010\u0010)\u001a\u00020\u001e2\u0006\u0010\u001f\u001a\u00020\u0013H\u0002J\u0010\u0010*\u001a\u00020\u001e2\u0006\u0010%\u001a\u00020&H\u0002J\u0012\u0010+\u001a\u00020\u00182\u0008\u0008\u0002\u0010\u001f\u001a\u00020\u0013H\u0002J\u0010\u0010,\u001a\u00020\u001a2\u0006\u0010-\u001a\u00020.H\u0002J\u0018\u0010/\u001a\u00020\u001e2\u0006\u00100\u001a\u00020\u000f2\u0006\u0010-\u001a\u00020.H\u0002J\u0018\u00101\u001a\u00020\u001e2\u0006\u00100\u001a\u00020\u000f2\u0006\u0010-\u001a\u00020.H\u0002J\u0010\u00102\u001a\u00020\u00132\u0006\u00103\u001a\u000204H\u0002J\u0008\u00105\u001a\u00020\u001eH\u0002J\u0018\u00106\u001a\u00020\u001e2\u0006\u0010\u001f\u001a\u00020\u00132\u0006\u00107\u001a\u00020\u001aH\u0002J\"\u00108\u001a\u00020\u00132\u0006\u0010%\u001a\u00020&2\u0006\u00100\u001a\u00020\u000f2\u0008\u0010\"\u001a\u0004\u0018\u00010#H\u0002J\u0010\u00109\u001a\u00020:2\u0006\u0010;\u001a\u00020\u0013H\u0002J(\u0010<\u001a\u00020:2\u0006\u00100\u001a\u00020\u000f2\u0006\u0010;\u001a\u00020\u00132\u0006\u0010=\u001a\u00020\u00132\u0006\u0010\"\u001a\u00020#H\u0002J.\u0010>\u001a\u00020:2\u0006\u0010?\u001a\u00020@2\u000c\u0010A\u001a\u0008\u0012\u0004\u0012\u00020B0\u00152\u0006\u0010C\u001a\u00020\u001a2\u0006\u0010D\u001a\u00020:H\u0002R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\rX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u000fX\u0082\u0004\u00a2\u0006\u0002\n\u0000R&\u0010\u0010\u001a\u001a\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u0013\u0012\u0004\u0012\u00020\u00130\u0012\u0012\u0004\u0012\u00020\u00130\u0011X\u0082\u0004\u00a2\u0006\u0002\n\u0000R \u0010\u0014\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u0013\u0012\u0004\u0012\u00020\u00130\u00120\u0015X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0016\u001a\u0008\u0012\u0004\u0012\u00020\u00180\u0017X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u0019\u001a\u000e\u0012\u0004\u0012\u00020\u0018\u0012\u0004\u0012\u00020\u001a0\u0011X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u001b\u001a\u000e\u0012\u0004\u0012\u00020\u0018\u0012\u0004\u0012\u00020\u00130\u0011X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001c\u001a\u00020\u0013X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006I"
    }
    d2 = {
        "Lcom/metamoji/nt/pdfsave/PdfPdfCopy;",
        "",
        "_doc",
        "Lcom/metamoji/pdf/PDFDocument;",
        "_xref",
        "Lcom/metamoji/nt/pdfsave/PdfXref;",
        "stream",
        "Ljava/io/OutputStream;",
        "encrypt",
        "Lcom/metamoji/nt/pdfsave/PdfEncrypt;",
        "<init>",
        "(Lcom/metamoji/pdf/PDFDocument;Lcom/metamoji/nt/pdfsave/PdfXref;Ljava/io/OutputStream;Lcom/metamoji/nt/pdfsave/PdfEncrypt;)V",
        "_ocgs",
        "Lcom/metamoji/pdf/content/OCGs;",
        "_writer",
        "Lcom/metamoji/nt/pdfsave/PdfPdfCopy$PdfObjWriter;",
        "_objmap",
        "",
        "Lkotlin/Pair;",
        "",
        "_hold",
        "",
        "_hiddenXObj",
        "",
        "",
        "_xobject",
        "Lcom/metamoji/pdf/core/PDFObj;",
        "_addx",
        "_formId",
        "savePage",
        "",
        "objid",
        "pageIndex",
        "parent",
        "bank",
        "Lcom/metamoji/nt/pdfsave/PdfPdf;",
        "saveContents",
        "page",
        "Lcom/metamoji/pdf/PDFPage;",
        "writeRotation",
        "saveResources",
        "saveXObject",
        "initFormId",
        "newFormId",
        "getAnnotationStream",
        "annot",
        "Lcom/metamoji/pdf/PDFAnnotation;",
        "writeAnnotation",
        "writer",
        "writeLinkAnnotation",
        "addReference",
        "refobj",
        "Lcom/metamoji/pdf/core/PDFRef;",
        "saveHolded",
        "saveObj",
        "obj",
        "copyContents",
        "checkMarker",
        "",
        "type",
        "handleMarker",
        "tag",
        "handleMarkedContent",
        "inst",
        "Lcom/metamoji/pdf/content/Instruction;",
        "marked",
        "Lcom/metamoji/nt/pdfsave/PdfPdfCopy$MarkedInfo;",
        "props",
        "hidden",
        "Companion",
        "MarkedInfo",
        "MarkerInfo",
        "PdfObjWriter",
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
.field public static final Companion:Lcom/metamoji/nt/pdfsave/PdfPdfCopy$Companion;

.field private static final EXCLUDE_FOR_RESOURCES:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final EXCLUDE_LENGTH:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final F3:Ljava/text/DecimalFormat;

.field private static final F5:Ljava/text/DecimalFormat;

.field private static final F8:Ljava/text/DecimalFormat;

.field private static final F_PATTERN:Lkotlin/text/Regex;


# instance fields
.field private final _addx:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final _doc:Lcom/metamoji/pdf/PDFDocument;

.field private _formId:I

.field private final _hiddenXObj:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private _hold:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lkotlin/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private final _objmap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lkotlin/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final _ocgs:Lcom/metamoji/pdf/content/OCGs;

.field private final _writer:Lcom/metamoji/nt/pdfsave/PdfPdfCopy$PdfObjWriter;

.field private final _xobject:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/metamoji/pdf/core/PDFObj;",
            ">;"
        }
    .end annotation
.end field

.field private final _xref:Lcom/metamoji/nt/pdfsave/PdfXref;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/metamoji/nt/pdfsave/PdfPdfCopy$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/metamoji/nt/pdfsave/PdfPdfCopy$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/metamoji/nt/pdfsave/PdfPdfCopy;->Companion:Lcom/metamoji/nt/pdfsave/PdfPdfCopy$Companion;

    .line 102
    const-string v0, "0.###"

    invoke-static {v0}, Lcom/metamoji/nt/pdfsave/PdfSavePdfKt;->access$getFormat(Ljava/lang/String;)Ljava/text/DecimalFormat;

    move-result-object v0

    sput-object v0, Lcom/metamoji/nt/pdfsave/PdfPdfCopy;->F3:Ljava/text/DecimalFormat;

    .line 103
    const-string v0, "0.#####"

    invoke-static {v0}, Lcom/metamoji/nt/pdfsave/PdfSavePdfKt;->access$getFormat(Ljava/lang/String;)Ljava/text/DecimalFormat;

    move-result-object v0

    sput-object v0, Lcom/metamoji/nt/pdfsave/PdfPdfCopy;->F5:Ljava/text/DecimalFormat;

    .line 104
    const-string v0, "0.########"

    invoke-static {v0}, Lcom/metamoji/nt/pdfsave/PdfSavePdfKt;->access$getFormat(Ljava/lang/String;)Ljava/text/DecimalFormat;

    move-result-object v0

    sput-object v0, Lcom/metamoji/nt/pdfsave/PdfPdfCopy;->F8:Ljava/text/DecimalFormat;

    const/4 v0, 0x2

    .line 111
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "ProcSet"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "XObject"

    aput-object v2, v0, v1

    invoke-static {v0}, Lkotlin/collections/SetsKt;->setOf([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/metamoji/nt/pdfsave/PdfPdfCopy;->EXCLUDE_FOR_RESOURCES:Ljava/util/Set;

    .line 112
    const-string v0, "Length"

    invoke-static {v0}, Lkotlin/collections/SetsKt;->setOf(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/metamoji/nt/pdfsave/PdfPdfCopy;->EXCLUDE_LENGTH:Ljava/util/Set;

    .line 114
    new-instance v0, Lkotlin/text/Regex;

    const-string v1, "Fm(\\d+)"

    invoke-direct {v0, v1}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/metamoji/nt/pdfsave/PdfPdfCopy;->F_PATTERN:Lkotlin/text/Regex;

    return-void
.end method

.method public constructor <init>(Lcom/metamoji/pdf/PDFDocument;Lcom/metamoji/nt/pdfsave/PdfXref;Ljava/io/OutputStream;Lcom/metamoji/nt/pdfsave/PdfEncrypt;)V
    .locals 1

    const-string v0, "_doc"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "_xref"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "stream"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    iput-object p1, p0, Lcom/metamoji/nt/pdfsave/PdfPdfCopy;->_doc:Lcom/metamoji/pdf/PDFDocument;

    .line 77
    iput-object p2, p0, Lcom/metamoji/nt/pdfsave/PdfPdfCopy;->_xref:Lcom/metamoji/nt/pdfsave/PdfXref;

    .line 85
    new-instance p2, Ljava/util/LinkedHashMap;

    invoke-direct {p2}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast p2, Ljava/util/Map;

    iput-object p2, p0, Lcom/metamoji/nt/pdfsave/PdfPdfCopy;->_objmap:Ljava/util/Map;

    .line 88
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    check-cast p2, Ljava/util/List;

    iput-object p2, p0, Lcom/metamoji/nt/pdfsave/PdfPdfCopy;->_hold:Ljava/util/List;

    .line 91
    new-instance p2, Ljava/util/LinkedHashSet;

    invoke-direct {p2}, Ljava/util/LinkedHashSet;-><init>()V

    check-cast p2, Ljava/util/Set;

    iput-object p2, p0, Lcom/metamoji/nt/pdfsave/PdfPdfCopy;->_hiddenXObj:Ljava/util/Set;

    .line 94
    new-instance p2, Ljava/util/LinkedHashMap;

    invoke-direct {p2}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast p2, Ljava/util/Map;

    iput-object p2, p0, Lcom/metamoji/nt/pdfsave/PdfPdfCopy;->_xobject:Ljava/util/Map;

    .line 96
    new-instance p2, Ljava/util/LinkedHashMap;

    invoke-direct {p2}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast p2, Ljava/util/Map;

    iput-object p2, p0, Lcom/metamoji/nt/pdfsave/PdfPdfCopy;->_addx:Ljava/util/Map;

    .line 118
    new-instance p2, Lcom/metamoji/nt/pdfsave/PdfPdfCopy$PdfObjWriter;

    invoke-direct {p2, p3, p4, p0}, Lcom/metamoji/nt/pdfsave/PdfPdfCopy$PdfObjWriter;-><init>(Ljava/io/OutputStream;Lcom/metamoji/nt/pdfsave/PdfEncrypt;Lcom/metamoji/nt/pdfsave/PdfPdfCopy;)V

    iput-object p2, p0, Lcom/metamoji/nt/pdfsave/PdfPdfCopy;->_writer:Lcom/metamoji/nt/pdfsave/PdfPdfCopy$PdfObjWriter;

    .line 119
    sget-object p2, Lcom/metamoji/pdf/content/OCGs;->Companion:Lcom/metamoji/pdf/content/OCGs$Companion;

    invoke-virtual {p2, p1}, Lcom/metamoji/pdf/content/OCGs$Companion;->getDefault(Lcom/metamoji/pdf/PDFDocument;)Lcom/metamoji/pdf/content/OCGs;

    move-result-object p1

    iput-object p1, p0, Lcom/metamoji/nt/pdfsave/PdfPdfCopy;->_ocgs:Lcom/metamoji/pdf/content/OCGs;

    return-void
.end method

.method public static final synthetic access$addReference(Lcom/metamoji/nt/pdfsave/PdfPdfCopy;Lcom/metamoji/pdf/core/PDFRef;)I
    .locals 0

    .line 75
    invoke-direct {p0, p1}, Lcom/metamoji/nt/pdfsave/PdfPdfCopy;->addReference(Lcom/metamoji/pdf/core/PDFRef;)I

    move-result p0

    return p0
.end method

.method public static final synthetic access$getF3$cp()Ljava/text/DecimalFormat;
    .locals 1

    .line 75
    sget-object v0, Lcom/metamoji/nt/pdfsave/PdfPdfCopy;->F3:Ljava/text/DecimalFormat;

    return-object v0
.end method

.method public static final synthetic access$getF5$cp()Ljava/text/DecimalFormat;
    .locals 1

    .line 75
    sget-object v0, Lcom/metamoji/nt/pdfsave/PdfPdfCopy;->F5:Ljava/text/DecimalFormat;

    return-object v0
.end method

.method public static final synthetic access$getF8$cp()Ljava/text/DecimalFormat;
    .locals 1

    .line 75
    sget-object v0, Lcom/metamoji/nt/pdfsave/PdfPdfCopy;->F8:Ljava/text/DecimalFormat;

    return-object v0
.end method

.method public static final synthetic access$get_xref$p(Lcom/metamoji/nt/pdfsave/PdfPdfCopy;)Lcom/metamoji/nt/pdfsave/PdfXref;
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/metamoji/nt/pdfsave/PdfPdfCopy;->_xref:Lcom/metamoji/nt/pdfsave/PdfXref;

    return-object p0
.end method

.method private final addReference(Lcom/metamoji/pdf/core/PDFRef;)I
    .locals 2

    .line 385
    invoke-virtual {p1}, Lcom/metamoji/pdf/core/PDFRef;->getId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1}, Lcom/metamoji/pdf/core/PDFRef;->getGen()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v0, p1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    .line 386
    iget-object v0, p0, Lcom/metamoji/nt/pdfsave/PdfPdfCopy;->_objmap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 387
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1

    .line 389
    :cond_0
    iget-object v0, p0, Lcom/metamoji/nt/pdfsave/PdfPdfCopy;->_xref:Lcom/metamoji/nt/pdfsave/PdfXref;

    invoke-virtual {v0}, Lcom/metamoji/nt/pdfsave/PdfXref;->addObject()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 390
    iget-object v1, p0, Lcom/metamoji/nt/pdfsave/PdfPdfCopy;->_objmap:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 391
    iget-object v1, p0, Lcom/metamoji/nt/pdfsave/PdfPdfCopy;->_hold:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 392
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1
.end method

.method private final checkMarker(I)Z
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    return v0

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private final copyContents(Lcom/metamoji/pdf/PDFPage;Lcom/metamoji/nt/pdfsave/PdfPdfCopy$PdfObjWriter;Lcom/metamoji/nt/pdfsave/PdfPdf;)I
    .locals 16

    move-object/from16 v1, p0

    move-object/from16 v0, p2

    move-object/from16 v2, p3

    const/4 v3, 0x0

    .line 449
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lcom/metamoji/pdf/PDFPage;->openContents()Lcom/metamoji/pdf/core/PDFInputStream;

    move-result-object v4

    check-cast v4, Ljava/io/Closeable;
    :try_end_0
    .catch Lcom/metamoji/pdf/core/PDFException; {:try_start_0 .. :try_end_0} :catch_2

    :try_start_1
    move-object v5, v4

    check-cast v5, Lcom/metamoji/pdf/core/PDFInputStream;

    .line 450
    invoke-virtual/range {p1 .. p1}, Lcom/metamoji/pdf/PDFPage;->getObj()Lcom/metamoji/pdf/core/PDFObj;

    move-result-object v6

    const-string v7, "Resources"

    invoke-virtual {v6, v7}, Lcom/metamoji/pdf/core/PDFObj;->get(Ljava/lang/String;)Lcom/metamoji/pdf/core/PDFObj;

    move-result-object v6

    const-string v7, "Properties"

    invoke-virtual {v6, v7}, Lcom/metamoji/pdf/core/PDFObj;->get(Ljava/lang/String;)Lcom/metamoji/pdf/core/PDFObj;

    move-result-object v6

    .line 451
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    check-cast v7, Ljava/util/List;

    .line 454
    new-instance v8, Lcom/metamoji/pdf/content/ContentParser;

    iget-object v9, v1, Lcom/metamoji/nt/pdfsave/PdfPdfCopy;->_doc:Lcom/metamoji/pdf/PDFDocument;

    check-cast v9, Lcom/metamoji/pdf/core/IPDFDocument;

    invoke-direct {v8, v5, v9}, Lcom/metamoji/pdf/content/ContentParser;-><init>(Lcom/metamoji/pdf/core/PDFInputStream;Lcom/metamoji/pdf/core/IPDFDocument;)V

    .line 457
    invoke-virtual {v8}, Lcom/metamoji/pdf/content/ContentParser;->getIterator()Lkotlin/sequences/Sequence;

    move-result-object v5

    invoke-interface {v5}, Lkotlin/sequences/Sequence;->iterator()Ljava/util/Iterator;

    move-result-object v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move v9, v3

    move v10, v9

    move v11, v10

    :goto_0
    const/4 v12, 0x0

    :cond_0
    :goto_1
    :try_start_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_b

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/metamoji/pdf/content/Instruction;

    .line 458
    invoke-virtual {v13}, Lcom/metamoji/pdf/content/Instruction;->getFlags()Ljava/util/EnumSet;

    move-result-object v14

    sget-object v15, Lcom/metamoji/pdf/content/Instruction$Flag;->STACK:Lcom/metamoji/pdf/content/Instruction$Flag;

    invoke-virtual {v14, v15}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_3

    .line 459
    invoke-virtual {v13}, Lcom/metamoji/pdf/content/Instruction;->getOp()Ljava/lang/String;

    move-result-object v14

    const-string v15, "q"

    invoke-static {v14, v15}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_1

    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    :cond_1
    if-eqz v9, :cond_2

    add-int/lit8 v9, v9, -0x1

    move v11, v3

    goto :goto_2

    :cond_2
    move v11, v3

    goto :goto_1

    :cond_3
    :goto_2
    if-nez v11, :cond_0

    .line 474
    invoke-virtual {v13}, Lcom/metamoji/pdf/content/Instruction;->getFlags()Ljava/util/EnumSet;

    move-result-object v14

    sget-object v15, Lcom/metamoji/pdf/content/Instruction$Flag;->MARK:Lcom/metamoji/pdf/content/Instruction$Flag;

    invoke-virtual {v14, v15}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_4

    .line 475
    invoke-direct {v1, v13, v7, v6, v10}, Lcom/metamoji/nt/pdfsave/PdfPdfCopy;->handleMarkedContent(Lcom/metamoji/pdf/content/Instruction;Ljava/util/List;Lcom/metamoji/pdf/core/PDFObj;Z)Z

    move-result v10

    .line 478
    :cond_4
    invoke-virtual {v13}, Lcom/metamoji/pdf/content/Instruction;->getOp()Ljava/lang/String;

    move-result-object v14

    const-string v15, "Do"

    invoke-static {v14, v15}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_5

    iget-object v14, v1, Lcom/metamoji/nt/pdfsave/PdfPdfCopy;->_hiddenXObj:Ljava/util/Set;

    invoke-virtual {v13}, Lcom/metamoji/pdf/content/Instruction;->getArgs()Ljava/util/List;

    move-result-object v15

    invoke-interface {v15, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/metamoji/pdf/core/PDFObj;

    invoke-virtual {v15}, Lcom/metamoji/pdf/core/PDFObj;->name()Ljava/lang/String;

    move-result-object v15

    invoke-interface {v14, v15}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_a

    :cond_5
    const/4 v14, 0x1

    if-eqz v2, :cond_6

    .line 480
    invoke-virtual {v13}, Lcom/metamoji/pdf/content/Instruction;->getOp()Ljava/lang/String;

    move-result-object v15

    const-string v8, "cm"

    invoke-static {v15, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 481
    invoke-virtual {v13}, Lcom/metamoji/pdf/content/Instruction;->getArgs()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/metamoji/pdf/core/PDFObj;

    invoke-virtual {v8}, Lcom/metamoji/pdf/core/PDFObj;->floatVal()F

    move-result v8

    const/high16 v15, 0x41200000    # 10.0f

    cmpg-float v8, v8, v15

    if-nez v8, :cond_6

    .line 482
    invoke-virtual {v13}, Lcom/metamoji/pdf/content/Instruction;->getArgs()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/metamoji/pdf/core/PDFObj;

    invoke-virtual {v8}, Lcom/metamoji/pdf/core/PDFObj;->floatVal()F

    move-result v8

    const/high16 v15, 0x40a00000    # 5.0f

    cmpg-float v8, v8, v15

    if-nez v8, :cond_6

    .line 483
    invoke-virtual {v13}, Lcom/metamoji/pdf/content/Instruction;->getArgs()Ljava/util/List;

    move-result-object v8

    const/4 v15, 0x2

    invoke-interface {v8, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/metamoji/pdf/core/PDFObj;

    invoke-virtual {v8}, Lcom/metamoji/pdf/core/PDFObj;->floatVal()F

    move-result v8

    const/high16 v15, 0x40400000    # 3.0f

    cmpg-float v8, v8, v15

    if-nez v8, :cond_6

    .line 484
    invoke-virtual {v13}, Lcom/metamoji/pdf/content/Instruction;->getArgs()Ljava/util/List;

    move-result-object v8

    const/4 v15, 0x3

    invoke-interface {v8, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/metamoji/pdf/core/PDFObj;

    invoke-virtual {v8}, Lcom/metamoji/pdf/core/PDFObj;->floatVal()F

    move-result v8

    const/high16 v15, 0x40800000    # 4.0f

    cmpg-float v8, v8, v15

    if-nez v8, :cond_6

    .line 486
    invoke-virtual {v13}, Lcom/metamoji/pdf/content/Instruction;->getArgs()Ljava/util/List;

    move-result-object v8

    const/4 v15, 0x4

    invoke-interface {v8, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/metamoji/pdf/core/PDFObj;

    invoke-virtual {v8}, Lcom/metamoji/pdf/core/PDFObj;->intVal()I

    move-result v8

    .line 487
    invoke-virtual {v13}, Lcom/metamoji/pdf/content/Instruction;->getArgs()Ljava/util/List;

    move-result-object v15

    const/4 v3, 0x5

    invoke-interface {v15, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/metamoji/pdf/core/PDFObj;

    invoke-virtual {v3}, Lcom/metamoji/pdf/core/PDFObj;->intVal()I

    move-result v3

    .line 488
    invoke-direct {v1, v8}, Lcom/metamoji/nt/pdfsave/PdfPdfCopy;->checkMarker(I)Z

    move-result v15

    if-eqz v15, :cond_6

    .line 489
    new-instance v12, Lcom/metamoji/nt/pdfsave/PdfPdfCopy$MarkerInfo;

    invoke-direct {v12, v8, v3}, Lcom/metamoji/nt/pdfsave/PdfPdfCopy$MarkerInfo;-><init>(II)V

    move v11, v14

    goto :goto_4

    :cond_6
    if-eqz v2, :cond_7

    if-eqz v12, :cond_7

    .line 495
    invoke-virtual {v13}, Lcom/metamoji/pdf/content/Instruction;->getOp()Ljava/lang/String;

    move-result-object v3

    const-string v8, "re"

    invoke-static {v3, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 496
    invoke-virtual {v12}, Lcom/metamoji/nt/pdfsave/PdfPdfCopy$MarkerInfo;->getType()I

    move-result v3

    invoke-virtual {v12}, Lcom/metamoji/nt/pdfsave/PdfPdfCopy$MarkerInfo;->getTag()I

    move-result v8

    invoke-direct {v1, v0, v3, v8, v2}, Lcom/metamoji/nt/pdfsave/PdfPdfCopy;->handleMarker(Lcom/metamoji/nt/pdfsave/PdfPdfCopy$PdfObjWriter;IILcom/metamoji/nt/pdfsave/PdfPdf;)Z

    move v11, v14

    const/4 v3, 0x0

    goto/16 :goto_0

    :cond_7
    if-eqz v10, :cond_9

    .line 502
    invoke-virtual {v13}, Lcom/metamoji/pdf/content/Instruction;->getFlags()Ljava/util/EnumSet;

    move-result-object v3

    sget-object v8, Lcom/metamoji/pdf/content/Instruction$Flag;->DRAW:Lcom/metamoji/pdf/content/Instruction$Flag;

    invoke-virtual {v3, v8}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    goto :goto_3

    .line 504
    :cond_8
    invoke-virtual {v13}, Lcom/metamoji/pdf/content/Instruction;->getFlags()Ljava/util/EnumSet;

    move-result-object v3

    sget-object v8, Lcom/metamoji/pdf/content/Instruction$Flag;->ENDPATH:Lcom/metamoji/pdf/content/Instruction$Flag;

    invoke-virtual {v3, v8}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 505
    const-string v3, "n\n"

    invoke-virtual {v0, v3}, Lcom/metamoji/nt/pdfsave/PdfPdfCopy$PdfObjWriter;->write(Ljava/lang/String;)V

    goto :goto_4

    .line 503
    :cond_9
    :goto_3
    invoke-virtual {v0, v13}, Lcom/metamoji/nt/pdfsave/PdfPdfCopy$PdfObjWriter;->writeInst(Lcom/metamoji/pdf/content/Instruction;)V

    :cond_a
    :goto_4
    const/4 v3, 0x0

    goto/16 :goto_1

    .line 508
    :cond_b
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 v0, 0x0

    .line 449
    :try_start_3
    invoke-static {v4, v0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_3
    .catch Lcom/metamoji/pdf/core/PDFException; {:try_start_3 .. :try_end_3} :catch_0

    return v9

    :catch_0
    move-exception v0

    move v3, v9

    goto :goto_6

    :catchall_0
    move-exception v0

    move-object v2, v0

    move v3, v9

    goto :goto_5

    :catchall_1
    move-exception v0

    move-object v2, v0

    const/4 v3, 0x0

    :goto_5
    :try_start_4
    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :catchall_2
    move-exception v0

    :try_start_5
    invoke-static {v4, v2}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0
    :try_end_5
    .catch Lcom/metamoji/pdf/core/PDFException; {:try_start_5 .. :try_end_5} :catch_1

    :catch_1
    move-exception v0

    goto :goto_6

    :catch_2
    move-exception v0

    const/4 v3, 0x0

    .line 512
    :goto_6
    check-cast v0, Ljava/lang/Throwable;

    const-string v2, "parsing PDF failed"

    invoke-static {v0, v2}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;Ljava/lang/String;)V

    return v3
.end method

.method private final getAnnotationStream(Lcom/metamoji/pdf/PDFAnnotation;)Lcom/metamoji/pdf/core/PDFObj;
    .locals 5

    .line 295
    iget-object v0, p0, Lcom/metamoji/nt/pdfsave/PdfPdfCopy;->_ocgs:Lcom/metamoji/pdf/content/OCGs;

    invoke-virtual {p1, v0}, Lcom/metamoji/pdf/PDFAnnotation;->isHidden(Lcom/metamoji/pdf/content/OCGs;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p1, Lcom/metamoji/pdf/core/PDFObj;->Companion:Lcom/metamoji/pdf/core/PDFObj$Companion;

    invoke-virtual {p1}, Lcom/metamoji/pdf/core/PDFObj$Companion;->getNull()Lcom/metamoji/pdf/core/PDFObj;

    move-result-object p1

    return-object p1

    .line 297
    :cond_0
    invoke-virtual {p1}, Lcom/metamoji/pdf/PDFAnnotation;->getObj()Lcom/metamoji/pdf/core/PDFObj;

    move-result-object p1

    .line 298
    const-string v0, "AP"

    invoke-virtual {p1, v0}, Lcom/metamoji/pdf/core/PDFObj;->get(Ljava/lang/String;)Lcom/metamoji/pdf/core/PDFObj;

    move-result-object v1

    const-string v2, "N"

    invoke-virtual {v1, v2}, Lcom/metamoji/pdf/core/PDFObj;->get(Ljava/lang/String;)Lcom/metamoji/pdf/core/PDFObj;

    move-result-object v1

    .line 299
    invoke-virtual {v1}, Lcom/metamoji/pdf/core/PDFObj;->isNull()Z

    move-result v3

    if-eqz v3, :cond_1

    sget-object p1, Lcom/metamoji/pdf/core/PDFObj;->Companion:Lcom/metamoji/pdf/core/PDFObj$Companion;

    invoke-virtual {p1}, Lcom/metamoji/pdf/core/PDFObj$Companion;->getNull()Lcom/metamoji/pdf/core/PDFObj;

    move-result-object p1

    return-object p1

    .line 302
    :cond_1
    invoke-virtual {v1}, Lcom/metamoji/pdf/core/PDFObj;->getType()Lcom/metamoji/pdf/core/PDFObj$Type;

    move-result-object v3

    sget-object v4, Lcom/metamoji/nt/pdfsave/PdfPdfCopy$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v3}, Lcom/metamoji/pdf/core/PDFObj$Type;->ordinal()I

    move-result v3

    aget v3, v4, v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_5

    const/4 v0, 0x2

    if-eq v3, v0, :cond_2

    .line 308
    sget-object p1, Lcom/metamoji/pdf/core/PDFObj;->Companion:Lcom/metamoji/pdf/core/PDFObj$Companion;

    invoke-virtual {p1}, Lcom/metamoji/pdf/core/PDFObj$Companion;->getNull()Lcom/metamoji/pdf/core/PDFObj;

    move-result-object p1

    return-object p1

    .line 305
    :cond_2
    const-string v0, "AS"

    invoke-virtual {p1, v0}, Lcom/metamoji/pdf/core/PDFObj;->get(Ljava/lang/String;)Lcom/metamoji/pdf/core/PDFObj;

    move-result-object p1

    invoke-virtual {p1}, Lcom/metamoji/pdf/core/PDFObj;->name()Ljava/lang/String;

    move-result-object p1

    .line 306
    invoke-virtual {v1}, Lcom/metamoji/pdf/core/PDFObj;->getDic()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/metamoji/pdf/core/PDFObj;

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    return-object p1

    :cond_4
    :goto_0
    sget-object p1, Lcom/metamoji/pdf/core/PDFObj;->Companion:Lcom/metamoji/pdf/core/PDFObj$Companion;

    invoke-virtual {p1}, Lcom/metamoji/pdf/core/PDFObj$Companion;->getNull()Lcom/metamoji/pdf/core/PDFObj;

    move-result-object p1

    return-object p1

    .line 303
    :cond_5
    invoke-virtual {p1, v0}, Lcom/metamoji/pdf/core/PDFObj;->get(Ljava/lang/String;)Lcom/metamoji/pdf/core/PDFObj;

    move-result-object p1

    invoke-virtual {p1}, Lcom/metamoji/pdf/core/PDFObj;->getDic()Ljava/util/Map;

    move-result-object p1

    if-eqz p1, :cond_7

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/metamoji/pdf/core/PDFObj;

    if-nez p1, :cond_6

    goto :goto_1

    :cond_6
    return-object p1

    :cond_7
    :goto_1
    sget-object p1, Lcom/metamoji/pdf/core/PDFObj;->Companion:Lcom/metamoji/pdf/core/PDFObj$Companion;

    invoke-virtual {p1}, Lcom/metamoji/pdf/core/PDFObj$Companion;->getNull()Lcom/metamoji/pdf/core/PDFObj;

    move-result-object p1

    return-object p1
.end method

.method private final handleMarkedContent(Lcom/metamoji/pdf/content/Instruction;Ljava/util/List;Lcom/metamoji/pdf/core/PDFObj;Z)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/pdf/content/Instruction;",
            "Ljava/util/List<",
            "Lcom/metamoji/nt/pdfsave/PdfPdfCopy$MarkedInfo;",
            ">;",
            "Lcom/metamoji/pdf/core/PDFObj;",
            "Z)Z"
        }
    .end annotation

    .line 537
    invoke-virtual {p1}, Lcom/metamoji/pdf/content/Instruction;->getOp()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v2, 0x10041

    const/4 v3, 0x1

    if-eq v1, v2, :cond_4

    const p1, 0x10158

    if-eq v1, p1, :cond_2

    const p1, 0x10c9b

    if-eq v1, p1, :cond_0

    goto/16 :goto_0

    :cond_0
    const-string p1, "EMC"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    .line 554
    :cond_1
    move-object p1, p2

    check-cast p1, Ljava/util/Collection;

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_6

    .line 555
    invoke-static {p2}, Lkotlin/collections/CollectionsKt;->last(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/metamoji/nt/pdfsave/PdfPdfCopy$MarkedInfo;

    .line 556
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p3

    sub-int/2addr p3, v3

    invoke-interface {p2, p3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 557
    invoke-virtual {p1}, Lcom/metamoji/nt/pdfsave/PdfPdfCopy$MarkedInfo;->getHidden()Z

    move-result p1

    return p1

    .line 537
    :cond_2
    const-string p1, "BMC"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    .line 551
    :cond_3
    new-instance p1, Lcom/metamoji/nt/pdfsave/PdfPdfCopy$MarkedInfo;

    invoke-direct {p1, p4}, Lcom/metamoji/nt/pdfsave/PdfPdfCopy$MarkedInfo;-><init>(Z)V

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return p4

    .line 537
    :cond_4
    const-string v1, "BDC"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_0

    .line 539
    :cond_5
    new-instance v0, Lcom/metamoji/nt/pdfsave/PdfPdfCopy$MarkedInfo;

    invoke-direct {v0, p4}, Lcom/metamoji/nt/pdfsave/PdfPdfCopy$MarkedInfo;-><init>(Z)V

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 541
    invoke-virtual {p1}, Lcom/metamoji/pdf/content/Instruction;->getArgs()Ljava/util/List;

    move-result-object p2

    const/4 v0, 0x0

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/metamoji/pdf/core/PDFObj;

    invoke-virtual {p2}, Lcom/metamoji/pdf/core/PDFObj;->name()Ljava/lang/String;

    move-result-object p2

    .line 542
    const-string v0, "OC"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_6

    .line 543
    invoke-virtual {p1}, Lcom/metamoji/pdf/content/Instruction;->getArgs()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/metamoji/pdf/core/PDFObj;

    invoke-virtual {p1}, Lcom/metamoji/pdf/core/PDFObj;->name()Ljava/lang/String;

    move-result-object p1

    .line 544
    invoke-virtual {p3, p1}, Lcom/metamoji/pdf/core/PDFObj;->get(Ljava/lang/String;)Lcom/metamoji/pdf/core/PDFObj;

    move-result-object p1

    .line 545
    iget-object p2, p0, Lcom/metamoji/nt/pdfsave/PdfPdfCopy;->_ocgs:Lcom/metamoji/pdf/content/OCGs;

    invoke-virtual {p2, p1}, Lcom/metamoji/pdf/content/OCGs;->isVisible(Lcom/metamoji/pdf/core/PDFObj;)Z

    move-result p1

    if-nez p1, :cond_6

    return v3

    :cond_6
    :goto_0
    return p4
.end method

.method private final handleMarker(Lcom/metamoji/nt/pdfsave/PdfPdfCopy$PdfObjWriter;IILcom/metamoji/nt/pdfsave/PdfPdf;)Z
    .locals 1

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    .line 527
    invoke-virtual {p4, p3}, Lcom/metamoji/nt/pdfsave/PdfPdf;->register(I)I

    move-result p2

    .line 528
    invoke-direct {p0, p2}, Lcom/metamoji/nt/pdfsave/PdfPdfCopy;->newFormId(I)Ljava/lang/String;

    move-result-object p2

    .line 529
    invoke-static {p2}, Lcom/metamoji/nt/pdfsave/PdfSaveToolKt;->NAME(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, " Do\n"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/metamoji/nt/pdfsave/PdfPdfCopy$PdfObjWriter;->write(Ljava/lang/String;)V

    return v0

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private final initFormId(Lcom/metamoji/pdf/PDFPage;)V
    .locals 6

    .line 255
    iget-object v0, p0, Lcom/metamoji/nt/pdfsave/PdfPdfCopy;->_xobject:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 256
    iget-object v0, p0, Lcom/metamoji/nt/pdfsave/PdfPdfCopy;->_addx:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    const/4 v0, 0x0

    .line 257
    iput v0, p0, Lcom/metamoji/nt/pdfsave/PdfPdfCopy;->_formId:I

    .line 259
    invoke-virtual {p1}, Lcom/metamoji/pdf/PDFPage;->getObj()Lcom/metamoji/pdf/core/PDFObj;

    move-result-object p1

    const-string v1, "Resources"

    invoke-virtual {p1, v1}, Lcom/metamoji/pdf/core/PDFObj;->get(Ljava/lang/String;)Lcom/metamoji/pdf/core/PDFObj;

    move-result-object p1

    const-string v1, "XObject"

    invoke-virtual {p1, v1}, Lcom/metamoji/pdf/core/PDFObj;->get(Ljava/lang/String;)Lcom/metamoji/pdf/core/PDFObj;

    move-result-object p1

    .line 260
    invoke-virtual {p1}, Lcom/metamoji/pdf/core/PDFObj;->getDic()Ljava/util/Map;

    move-result-object p1

    if-nez p1, :cond_0

    goto/16 :goto_3

    .line 263
    :cond_0
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/metamoji/pdf/core/PDFObj;

    .line 264
    invoke-virtual {v1}, Lcom/metamoji/pdf/core/PDFObj;->resolve()Lcom/metamoji/pdf/core/PDFObj;

    move-result-object v3

    .line 265
    const-string v4, "OC"

    invoke-virtual {v3, v4}, Lcom/metamoji/pdf/core/PDFObj;->contains(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/metamoji/nt/pdfsave/PdfPdfCopy;->_ocgs:Lcom/metamoji/pdf/content/OCGs;

    invoke-virtual {v3, v4}, Lcom/metamoji/pdf/core/PDFObj;->get(Ljava/lang/String;)Lcom/metamoji/pdf/core/PDFObj;

    move-result-object v3

    invoke-virtual {v5, v3}, Lcom/metamoji/pdf/content/OCGs;->isVisible(Lcom/metamoji/pdf/core/PDFObj;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 266
    iget-object v1, p0, Lcom/metamoji/nt/pdfsave/PdfPdfCopy;->_hiddenXObj:Ljava/util/Set;

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 268
    :cond_1
    iget-object v3, p0, Lcom/metamoji/nt/pdfsave/PdfPdfCopy;->_xobject:Ljava/util/Map;

    invoke-interface {v3, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 272
    :cond_2
    iget-object p1, p0, Lcom/metamoji/nt/pdfsave/PdfPdfCopy;->_xobject:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    .line 661
    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {p1, v2}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v1, Ljava/util/Collection;

    .line 662
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 663
    check-cast v2, Ljava/lang/String;

    .line 273
    sget-object v3, Lcom/metamoji/nt/pdfsave/PdfPdfCopy;->F_PATTERN:Lkotlin/text/Regex;

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v3, v2}, Lkotlin/text/Regex;->matchEntire(Ljava/lang/CharSequence;)Lkotlin/text/MatchResult;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-interface {v2}, Lkotlin/text/MatchResult;->getGroups()Lkotlin/text/MatchGroupCollection;

    move-result-object v2

    if-eqz v2, :cond_3

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Lkotlin/text/MatchGroupCollection;->get(I)Lkotlin/text/MatchGroup;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lkotlin/text/MatchGroup;->getValue()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_4

    :cond_3
    const-string v2, "0"

    :cond_4
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 663
    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 664
    :cond_5
    check-cast v1, Ljava/util/List;

    .line 272
    check-cast v1, Ljava/lang/Iterable;

    .line 274
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->maxOrNull(Ljava/lang/Iterable;)Ljava/lang/Comparable;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-eqz p1, :cond_6

    .line 272
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    goto :goto_2

    :cond_6
    move p1, v0

    :goto_2
    iput p1, p0, Lcom/metamoji/nt/pdfsave/PdfPdfCopy;->_formId:I

    const/16 v1, 0x3e8

    if-lt p1, v1, :cond_7

    .line 276
    iput v0, p0, Lcom/metamoji/nt/pdfsave/PdfPdfCopy;->_formId:I

    :cond_7
    :goto_3
    return-void
.end method

.method private final newFormId(I)Ljava/lang/String;
    .locals 3

    .line 282
    :cond_0
    iget v0, p0, Lcom/metamoji/nt/pdfsave/PdfPdfCopy;->_formId:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/metamoji/nt/pdfsave/PdfPdfCopy;->_formId:I

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Fm"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 283
    iget-object v1, p0, Lcom/metamoji/nt/pdfsave/PdfPdfCopy;->_xobject:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    if-eqz p1, :cond_1

    .line 285
    iget-object v1, p0, Lcom/metamoji/nt/pdfsave/PdfPdfCopy;->_addx:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v1, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v0
.end method

.method static synthetic newFormId$default(Lcom/metamoji/nt/pdfsave/PdfPdfCopy;IILjava/lang/Object;)Ljava/lang/String;
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    .line 280
    :cond_0
    invoke-direct {p0, p1}, Lcom/metamoji/nt/pdfsave/PdfPdfCopy;->newFormId(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private final saveContents(Lcom/metamoji/pdf/PDFPage;Lcom/metamoji/nt/pdfsave/PdfPdf;)V
    .locals 9

    .line 180
    const-string v0, "q\n"

    iget-object v1, p0, Lcom/metamoji/nt/pdfsave/PdfPdfCopy;->_writer:Lcom/metamoji/nt/pdfsave/PdfPdfCopy$PdfObjWriter;

    invoke-virtual {v1}, Lcom/metamoji/nt/pdfsave/PdfPdfCopy$PdfObjWriter;->beginStream()Ljava/io/OutputStream;

    move-result-object v1

    check-cast v1, Ljava/io/Closeable;

    :try_start_0
    move-object v2, v1

    check-cast v2, Ljava/io/OutputStream;

    .line 181
    new-instance v3, Lcom/metamoji/nt/pdfsave/PdfPdfCopy$PdfObjWriter;

    const/4 v4, 0x0

    invoke-direct {v3, v2, v4, v4}, Lcom/metamoji/nt/pdfsave/PdfPdfCopy$PdfObjWriter;-><init>(Ljava/io/OutputStream;Lcom/metamoji/nt/pdfsave/PdfEncrypt;Lcom/metamoji/nt/pdfsave/PdfPdfCopy;)V

    .line 182
    invoke-virtual {v3, v0}, Lcom/metamoji/nt/pdfsave/PdfPdfCopy$PdfObjWriter;->write(Ljava/lang/String;)V

    .line 183
    invoke-direct {p0, p1, v3, p2}, Lcom/metamoji/nt/pdfsave/PdfPdfCopy;->copyContents(Lcom/metamoji/pdf/PDFPage;Lcom/metamoji/nt/pdfsave/PdfPdfCopy$PdfObjWriter;Lcom/metamoji/nt/pdfsave/PdfPdf;)I

    move-result p2

    .line 184
    const-string v2, "\n"

    invoke-virtual {v3, v2}, Lcom/metamoji/nt/pdfsave/PdfPdfCopy$PdfObjWriter;->write(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x0

    move v5, v2

    .line 185
    :goto_0
    const-string v6, "Q\n"

    if-ge v5, p2, :cond_0

    .line 186
    :try_start_1
    invoke-virtual {v3, v6}, Lcom/metamoji/nt/pdfsave/PdfPdfCopy$PdfObjWriter;->write(Ljava/lang/String;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 188
    :cond_0
    invoke-virtual {v3, v6}, Lcom/metamoji/nt/pdfsave/PdfPdfCopy$PdfObjWriter;->write(Ljava/lang/String;)V

    .line 191
    invoke-virtual {p1}, Lcom/metamoji/pdf/PDFPage;->getAnnotations()Lkotlin/sequences/Sequence;

    move-result-object p1

    invoke-interface {p1}, Lkotlin/sequences/Sequence;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/metamoji/pdf/PDFAnnotation;

    .line 192
    iget-object v5, p0, Lcom/metamoji/nt/pdfsave/PdfPdfCopy;->_ocgs:Lcom/metamoji/pdf/content/OCGs;

    invoke-virtual {p2, v5}, Lcom/metamoji/pdf/PDFAnnotation;->isHidden(Lcom/metamoji/pdf/content/OCGs;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 194
    invoke-direct {p0, p2}, Lcom/metamoji/nt/pdfsave/PdfPdfCopy;->getAnnotationStream(Lcom/metamoji/pdf/PDFAnnotation;)Lcom/metamoji/pdf/core/PDFObj;

    move-result-object v5

    .line 195
    invoke-virtual {v5}, Lcom/metamoji/pdf/core/PDFObj;->isNull()Z

    move-result v7

    if-nez v7, :cond_3

    .line 196
    const-string v7, "N"

    invoke-virtual {p2, v7, v2}, Lcom/metamoji/pdf/PDFAnnotation;->getAppearanceMatrix(Ljava/lang/String;Z)Landroid/graphics/Matrix;

    move-result-object p2

    if-nez p2, :cond_2

    goto :goto_1

    :cond_2
    const/4 v7, 0x1

    .line 197
    invoke-static {p0, v2, v7, v4}, Lcom/metamoji/nt/pdfsave/PdfPdfCopy;->newFormId$default(Lcom/metamoji/nt/pdfsave/PdfPdfCopy;IILjava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 198
    iget-object v8, p0, Lcom/metamoji/nt/pdfsave/PdfPdfCopy;->_xobject:Ljava/util/Map;

    invoke-interface {v8, v7, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 200
    invoke-virtual {v3, v0}, Lcom/metamoji/nt/pdfsave/PdfPdfCopy$PdfObjWriter;->write(Ljava/lang/String;)V

    .line 201
    invoke-virtual {v3, p2}, Lcom/metamoji/nt/pdfsave/PdfPdfCopy$PdfObjWriter;->transform(Landroid/graphics/Matrix;)V

    .line 202
    invoke-static {v7}, Lcom/metamoji/nt/pdfsave/PdfSaveToolKt;->NAME(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v5, " Do\n"

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v3, p2}, Lcom/metamoji/nt/pdfsave/PdfPdfCopy$PdfObjWriter;->write(Ljava/lang/String;)V

    .line 203
    invoke-virtual {v3, v6}, Lcom/metamoji/nt/pdfsave/PdfPdfCopy$PdfObjWriter;->write(Ljava/lang/String;)V

    goto :goto_1

    .line 206
    :cond_3
    invoke-direct {p0, v3, p2}, Lcom/metamoji/nt/pdfsave/PdfPdfCopy;->writeAnnotation(Lcom/metamoji/nt/pdfsave/PdfPdfCopy$PdfObjWriter;Lcom/metamoji/pdf/PDFAnnotation;)V

    goto :goto_1

    .line 210
    :cond_4
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 180
    invoke-static {v1, v4}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-void

    :catchall_0
    move-exception p1

    :try_start_2
    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception p2

    invoke-static {v1, p1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw p2
.end method

.method static synthetic saveContents$default(Lcom/metamoji/nt/pdfsave/PdfPdfCopy;Lcom/metamoji/pdf/PDFPage;Lcom/metamoji/nt/pdfsave/PdfPdf;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 179
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/metamoji/nt/pdfsave/PdfPdfCopy;->saveContents(Lcom/metamoji/pdf/PDFPage;Lcom/metamoji/nt/pdfsave/PdfPdf;)V

    return-void
.end method

.method private final saveHolded()V
    .locals 5

    .line 396
    :cond_0
    iget-object v0, p0, Lcom/metamoji/nt/pdfsave/PdfPdfCopy;->_hold:Ljava/util/List;

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 397
    iget-object v0, p0, Lcom/metamoji/nt/pdfsave/PdfPdfCopy;->_hold:Ljava/util/List;

    .line 398
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    check-cast v1, Ljava/util/List;

    iput-object v1, p0, Lcom/metamoji/nt/pdfsave/PdfPdfCopy;->_hold:Ljava/util/List;

    .line 400
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkotlin/Pair;

    .line 401
    iget-object v2, p0, Lcom/metamoji/nt/pdfsave/PdfPdfCopy;->_objmap:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    .line 402
    iget-object v3, p0, Lcom/metamoji/nt/pdfsave/PdfPdfCopy;->_doc:Lcom/metamoji/pdf/PDFDocument;

    invoke-virtual {v1}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    invoke-virtual {v1}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    invoke-virtual {v3, v4, v1}, Lcom/metamoji/pdf/PDFDocument;->getObject(II)Lcom/metamoji/pdf/core/PDFObj;

    move-result-object v1

    invoke-direct {p0, v2, v1}, Lcom/metamoji/nt/pdfsave/PdfPdfCopy;->saveObj(ILcom/metamoji/pdf/core/PDFObj;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private final saveObj(ILcom/metamoji/pdf/core/PDFObj;)V
    .locals 6

    .line 408
    iget-object v0, p0, Lcom/metamoji/nt/pdfsave/PdfPdfCopy;->_writer:Lcom/metamoji/nt/pdfsave/PdfPdfCopy$PdfObjWriter;

    .line 409
    invoke-virtual {p2}, Lcom/metamoji/pdf/core/PDFObj;->getType()Lcom/metamoji/pdf/core/PDFObj$Type;

    move-result-object v1

    sget-object v2, Lcom/metamoji/pdf/core/PDFObj$Type;->STREAM:Lcom/metamoji/pdf/core/PDFObj$Type;

    if-eq v1, v2, :cond_0

    .line 410
    invoke-virtual {v0, p1}, Lcom/metamoji/nt/pdfsave/PdfPdfCopy$PdfObjWriter;->beginObject(I)I

    .line 411
    invoke-virtual {v0, p2}, Lcom/metamoji/nt/pdfsave/PdfPdfCopy$PdfObjWriter;->writeObj(Lcom/metamoji/pdf/core/PDFObj;)V

    .line 412
    const-string p1, "\n"

    invoke-virtual {v0, p1}, Lcom/metamoji/nt/pdfsave/PdfPdfCopy$PdfObjWriter;->write(Ljava/lang/String;)V

    .line 413
    invoke-virtual {v0}, Lcom/metamoji/nt/pdfsave/PdfPdfCopy$PdfObjWriter;->endObject()V

    return-void

    .line 418
    :cond_0
    invoke-virtual {v0, p1}, Lcom/metamoji/nt/pdfsave/PdfPdfCopy$PdfObjWriter;->beginObject(I)I

    .line 420
    invoke-virtual {v0}, Lcom/metamoji/nt/pdfsave/PdfPdfCopy$PdfObjWriter;->beginDictionary()V

    .line 421
    sget-object p1, Lcom/metamoji/nt/pdfsave/PdfPdfCopy;->EXCLUDE_LENGTH:Ljava/util/Set;

    invoke-virtual {v0, p2, p1}, Lcom/metamoji/nt/pdfsave/PdfPdfCopy$PdfObjWriter;->writeDictionaryInner(Lcom/metamoji/pdf/core/PDFObj;Ljava/util/Set;)V

    const/4 p1, 0x0

    .line 422
    invoke-virtual {v0, p1}, Lcom/metamoji/nt/pdfsave/PdfPdfCopy$PdfObjWriter;->writeStreamProps(Z)V

    .line 423
    invoke-virtual {v0}, Lcom/metamoji/nt/pdfsave/PdfPdfCopy$PdfObjWriter;->endDictionary()V

    .line 425
    invoke-virtual {v0}, Lcom/metamoji/nt/pdfsave/PdfPdfCopy$PdfObjWriter;->beginStream()Ljava/io/OutputStream;

    move-result-object v1

    check-cast v1, Ljava/io/Closeable;

    :try_start_0
    move-object v2, v1

    check-cast v2, Ljava/io/OutputStream;

    const/4 v3, -0x2

    .line 426
    invoke-virtual {p2, v3}, Lcom/metamoji/pdf/core/PDFObj;->openStream(I)Lcom/metamoji/pdf/core/PDFInputStream;

    move-result-object p2

    check-cast p2, Ljava/io/Closeable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    move-object v3, p2

    check-cast v3, Lcom/metamoji/pdf/core/PDFInputStream;

    .line 427
    check-cast v3, Ljava/io/InputStream;

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-static {v3, v2, p1, v4, v5}, Lkotlin/io/ByteStreamsKt;->copyTo$default(Ljava/io/InputStream;Ljava/io/OutputStream;IILjava/lang/Object;)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 426
    :try_start_2
    invoke-static {p2, v5}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 425
    invoke-static {v1, v5}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 431
    invoke-virtual {v0}, Lcom/metamoji/nt/pdfsave/PdfPdfCopy$PdfObjWriter;->endObject()V

    return-void

    :catchall_0
    move-exception p1

    .line 426
    :try_start_3
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v0

    :try_start_4
    invoke-static {p2, p1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :catchall_2
    move-exception p1

    .line 425
    :try_start_5
    throw p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    :catchall_3
    move-exception p2

    invoke-static {v1, p1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw p2
.end method

.method public static synthetic savePage$default(Lcom/metamoji/nt/pdfsave/PdfPdfCopy;IIILcom/metamoji/nt/pdfsave/PdfPdf;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_0

    const/4 p3, 0x0

    :cond_0
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_1

    const/4 p4, 0x0

    .line 122
    :cond_1
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/metamoji/nt/pdfsave/PdfPdfCopy;->savePage(IIILcom/metamoji/nt/pdfsave/PdfPdf;)V

    return-void
.end method

.method private final saveResources(Lcom/metamoji/pdf/PDFPage;)Lkotlin/Pair;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/pdf/PDFPage;",
            ")",
            "Lkotlin/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 226
    iget-object v0, p0, Lcom/metamoji/nt/pdfsave/PdfPdfCopy;->_writer:Lcom/metamoji/nt/pdfsave/PdfPdfCopy$PdfObjWriter;

    .line 227
    iget-object v1, p0, Lcom/metamoji/nt/pdfsave/PdfPdfCopy;->_xref:Lcom/metamoji/nt/pdfsave/PdfXref;

    invoke-virtual {v1}, Lcom/metamoji/nt/pdfsave/PdfXref;->addObject()I

    move-result v1

    .line 228
    invoke-virtual {v0}, Lcom/metamoji/nt/pdfsave/PdfPdfCopy$PdfObjWriter;->beginObject()I

    move-result v2

    .line 229
    invoke-virtual {v0}, Lcom/metamoji/nt/pdfsave/PdfPdfCopy$PdfObjWriter;->beginDictionary()V

    .line 230
    invoke-virtual {p1}, Lcom/metamoji/pdf/PDFPage;->getObj()Lcom/metamoji/pdf/core/PDFObj;

    move-result-object p1

    const-string v3, "Resources"

    invoke-virtual {p1, v3}, Lcom/metamoji/pdf/core/PDFObj;->get(Ljava/lang/String;)Lcom/metamoji/pdf/core/PDFObj;

    move-result-object p1

    .line 231
    invoke-virtual {p1}, Lcom/metamoji/pdf/core/PDFObj;->getType()Lcom/metamoji/pdf/core/PDFObj$Type;

    move-result-object v3

    sget-object v4, Lcom/metamoji/pdf/core/PDFObj$Type;->DICTIONARY:Lcom/metamoji/pdf/core/PDFObj$Type;

    if-ne v3, v4, :cond_0

    .line 232
    sget-object v3, Lcom/metamoji/nt/pdfsave/PdfPdfCopy;->EXCLUDE_FOR_RESOURCES:Ljava/util/Set;

    invoke-virtual {v0, p1, v3}, Lcom/metamoji/nt/pdfsave/PdfPdfCopy$PdfObjWriter;->writeDictionaryInner(Lcom/metamoji/pdf/core/PDFObj;Ljava/util/Set;)V

    .line 234
    :cond_0
    invoke-static {v1}, Lcom/metamoji/nt/pdfsave/PdfSaveToolKt;->OBJREF(I)Ljava/lang/String;

    move-result-object p1

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "/XObject "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/metamoji/nt/pdfsave/PdfPdfCopy$PdfObjWriter;->write(Ljava/lang/String;)V

    .line 235
    invoke-virtual {v0}, Lcom/metamoji/nt/pdfsave/PdfPdfCopy$PdfObjWriter;->endDictionary()V

    .line 236
    invoke-virtual {v0}, Lcom/metamoji/nt/pdfsave/PdfPdfCopy$PdfObjWriter;->endObject()V

    .line 237
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    return-object p1
.end method

.method private final saveXObject(I)V
    .locals 4

    .line 242
    iget-object v0, p0, Lcom/metamoji/nt/pdfsave/PdfPdfCopy;->_writer:Lcom/metamoji/nt/pdfsave/PdfPdfCopy$PdfObjWriter;

    .line 243
    invoke-virtual {v0, p1}, Lcom/metamoji/nt/pdfsave/PdfPdfCopy$PdfObjWriter;->beginObject(I)I

    .line 244
    invoke-virtual {v0}, Lcom/metamoji/nt/pdfsave/PdfPdfCopy$PdfObjWriter;->beginDictionary()V

    .line 245
    new-instance p1, Lcom/metamoji/pdf/core/PDFDictionary;

    iget-object v1, p0, Lcom/metamoji/nt/pdfsave/PdfPdfCopy;->_xobject:Ljava/util/Map;

    invoke-direct {p1, v1}, Lcom/metamoji/pdf/core/PDFDictionary;-><init>(Ljava/util/Map;)V

    check-cast p1, Lcom/metamoji/pdf/core/PDFObj;

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-static {v0, p1, v1, v2, v1}, Lcom/metamoji/nt/pdfsave/PdfPdfCopy$PdfObjWriter;->writeDictionaryInner$default(Lcom/metamoji/nt/pdfsave/PdfPdfCopy$PdfObjWriter;Lcom/metamoji/pdf/core/PDFObj;Ljava/util/Set;ILjava/lang/Object;)V

    .line 246
    iget-object p1, p0, Lcom/metamoji/nt/pdfsave/PdfPdfCopy;->_addx:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    .line 247
    invoke-static {v2}, Lcom/metamoji/nt/pdfsave/PdfSaveToolKt;->NAME(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1}, Lcom/metamoji/nt/pdfsave/PdfSaveToolKt;->OBJREF(I)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/metamoji/nt/pdfsave/PdfPdfCopy$PdfObjWriter;->write(Ljava/lang/String;)V

    goto :goto_0

    .line 249
    :cond_0
    invoke-virtual {v0}, Lcom/metamoji/nt/pdfsave/PdfPdfCopy$PdfObjWriter;->endDictionary()V

    .line 250
    invoke-virtual {v0}, Lcom/metamoji/nt/pdfsave/PdfPdfCopy$PdfObjWriter;->endObject()V

    return-void
.end method

.method private final writeAnnotation(Lcom/metamoji/nt/pdfsave/PdfPdfCopy$PdfObjWriter;Lcom/metamoji/pdf/PDFAnnotation;)V
    .locals 2

    .line 314
    invoke-virtual {p2}, Lcom/metamoji/pdf/PDFAnnotation;->getObj()Lcom/metamoji/pdf/core/PDFObj;

    move-result-object v0

    const-string v1, "Subtype"

    invoke-virtual {v0, v1}, Lcom/metamoji/pdf/core/PDFObj;->get(Ljava/lang/String;)Lcom/metamoji/pdf/core/PDFObj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/pdf/core/PDFObj;->name()Ljava/lang/String;

    move-result-object v0

    .line 315
    const-string v1, "Link"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/metamoji/nt/pdfsave/PdfPdfCopy;->writeLinkAnnotation(Lcom/metamoji/nt/pdfsave/PdfPdfCopy$PdfObjWriter;Lcom/metamoji/pdf/PDFAnnotation;)V

    :cond_0
    return-void
.end method

.method private final writeLinkAnnotation(Lcom/metamoji/nt/pdfsave/PdfPdfCopy$PdfObjWriter;Lcom/metamoji/pdf/PDFAnnotation;)V
    .locals 11

    .line 320
    invoke-virtual {p2}, Lcom/metamoji/pdf/PDFAnnotation;->getObj()Lcom/metamoji/pdf/core/PDFObj;

    move-result-object v0

    const-string v1, "C"

    invoke-virtual {v0, v1}, Lcom/metamoji/pdf/core/PDFObj;->get(Ljava/lang/String;)Lcom/metamoji/pdf/core/PDFObj;

    move-result-object v0

    .line 321
    invoke-virtual {v0}, Lcom/metamoji/pdf/core/PDFObj;->getCount()I

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 326
    :cond_0
    sget-object v1, Lcom/metamoji/pdf/core/PDFObj;->Companion:Lcom/metamoji/pdf/core/PDFObj$Companion;

    invoke-virtual {v1}, Lcom/metamoji/pdf/core/PDFObj$Companion;->getNull()Lcom/metamoji/pdf/core/PDFObj;

    move-result-object v1

    .line 329
    invoke-virtual {p2}, Lcom/metamoji/pdf/PDFAnnotation;->getObj()Lcom/metamoji/pdf/core/PDFObj;

    move-result-object v2

    const-string v3, "BS"

    invoke-virtual {v2, v3}, Lcom/metamoji/pdf/core/PDFObj;->get(Ljava/lang/String;)Lcom/metamoji/pdf/core/PDFObj;

    move-result-object v2

    .line 330
    invoke-virtual {v2}, Lcom/metamoji/pdf/core/PDFObj;->isNull()Z

    move-result v3

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v7, 0x2

    const/4 v8, 0x1

    const/4 v9, 0x0

    if-nez v3, :cond_3

    .line 331
    const-string v3, "W"

    invoke-virtual {v2, v3}, Lcom/metamoji/pdf/core/PDFObj;->get(Ljava/lang/String;)Lcom/metamoji/pdf/core/PDFObj;

    move-result-object v3

    invoke-virtual {v3, v4}, Lcom/metamoji/pdf/core/PDFObj;->floatVal(F)F

    move-result v3

    cmpg-float v4, v3, v6

    if-nez v4, :cond_1

    return-void

    .line 333
    :cond_1
    const-string v4, "S"

    invoke-virtual {v2, v4}, Lcom/metamoji/pdf/core/PDFObj;->get(Ljava/lang/String;)Lcom/metamoji/pdf/core/PDFObj;

    move-result-object v4

    invoke-virtual {v4}, Lcom/metamoji/pdf/core/PDFObj;->name()Ljava/lang/String;

    move-result-object v4

    .line 334
    const-string v10, "U"

    invoke-static {v4, v10}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    move v2, v8

    goto :goto_1

    .line 335
    :cond_2
    const-string v10, "D"

    invoke-static {v4, v10}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-virtual {v2, v10}, Lcom/metamoji/pdf/core/PDFObj;->get(Ljava/lang/String;)Lcom/metamoji/pdf/core/PDFObj;

    move-result-object v1

    goto :goto_0

    .line 338
    :cond_3
    const-string v1, "Border"

    invoke-virtual {v2, v1}, Lcom/metamoji/pdf/core/PDFObj;->get(Ljava/lang/String;)Lcom/metamoji/pdf/core/PDFObj;

    move-result-object v1

    .line 339
    invoke-virtual {v1, v7}, Lcom/metamoji/pdf/core/PDFObj;->get(I)Lcom/metamoji/pdf/core/PDFObj;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/metamoji/pdf/core/PDFObj;->floatVal(F)F

    move-result v3

    cmpg-float v2, v3, v6

    if-nez v2, :cond_4

    return-void

    .line 343
    :cond_4
    invoke-virtual {v1, v5}, Lcom/metamoji/pdf/core/PDFObj;->get(I)Lcom/metamoji/pdf/core/PDFObj;

    move-result-object v1

    :cond_5
    :goto_0
    move v2, v9

    :goto_1
    const/high16 v4, 0x40000000    # 2.0f

    cmpg-float v10, v3, v4

    if-gez v10, :cond_6

    goto :goto_2

    :cond_6
    move v6, v3

    .line 352
    :goto_2
    invoke-virtual {p2}, Lcom/metamoji/pdf/PDFAnnotation;->getRect()Landroid/graphics/RectF;

    move-result-object p2

    neg-float v3, v6

    div-float/2addr v3, v4

    invoke-virtual {p2, v3, v3}, Landroid/graphics/RectF;->inset(FF)V

    .line 355
    const-string v3, "q\n"

    invoke-virtual {p1, v3}, Lcom/metamoji/nt/pdfsave/PdfPdfCopy$PdfObjWriter;->write(Ljava/lang/String;)V

    .line 357
    invoke-virtual {v0}, Lcom/metamoji/pdf/core/PDFObj;->getCount()I

    move-result v3

    const-string v4, " "

    if-eq v3, v8, :cond_9

    if-eq v3, v5, :cond_8

    const/4 v10, 0x4

    if-eq v3, v10, :cond_7

    goto/16 :goto_3

    .line 360
    :cond_7
    sget-object v3, Lcom/metamoji/nt/pdfsave/PdfPdfCopy;->Companion:Lcom/metamoji/nt/pdfsave/PdfPdfCopy$Companion;

    invoke-virtual {v0, v9}, Lcom/metamoji/pdf/core/PDFObj;->get(I)Lcom/metamoji/pdf/core/PDFObj;

    move-result-object v9

    invoke-static {v3, v9}, Lcom/metamoji/nt/pdfsave/PdfPdfCopy$Companion;->access$COLORCOMP(Lcom/metamoji/nt/pdfsave/PdfPdfCopy$Companion;Lcom/metamoji/pdf/core/PDFObj;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v8}, Lcom/metamoji/pdf/core/PDFObj;->get(I)Lcom/metamoji/pdf/core/PDFObj;

    move-result-object v8

    invoke-static {v3, v8}, Lcom/metamoji/nt/pdfsave/PdfPdfCopy$Companion;->access$COLORCOMP(Lcom/metamoji/nt/pdfsave/PdfPdfCopy$Companion;Lcom/metamoji/pdf/core/PDFObj;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v7}, Lcom/metamoji/pdf/core/PDFObj;->get(I)Lcom/metamoji/pdf/core/PDFObj;

    move-result-object v7

    invoke-static {v3, v7}, Lcom/metamoji/nt/pdfsave/PdfPdfCopy$Companion;->access$COLORCOMP(Lcom/metamoji/nt/pdfsave/PdfPdfCopy$Companion;Lcom/metamoji/pdf/core/PDFObj;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v5}, Lcom/metamoji/pdf/core/PDFObj;->get(I)Lcom/metamoji/pdf/core/PDFObj;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/metamoji/nt/pdfsave/PdfPdfCopy$Companion;->access$COLORCOMP(Lcom/metamoji/nt/pdfsave/PdfPdfCopy$Companion;Lcom/metamoji/pdf/core/PDFObj;)Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " K\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/metamoji/nt/pdfsave/PdfPdfCopy$PdfObjWriter;->write(Ljava/lang/String;)V

    goto :goto_3

    .line 359
    :cond_8
    sget-object v3, Lcom/metamoji/nt/pdfsave/PdfPdfCopy;->Companion:Lcom/metamoji/nt/pdfsave/PdfPdfCopy$Companion;

    invoke-virtual {v0, v9}, Lcom/metamoji/pdf/core/PDFObj;->get(I)Lcom/metamoji/pdf/core/PDFObj;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/metamoji/nt/pdfsave/PdfPdfCopy$Companion;->access$COLORCOMP(Lcom/metamoji/nt/pdfsave/PdfPdfCopy$Companion;Lcom/metamoji/pdf/core/PDFObj;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v8}, Lcom/metamoji/pdf/core/PDFObj;->get(I)Lcom/metamoji/pdf/core/PDFObj;

    move-result-object v8

    invoke-static {v3, v8}, Lcom/metamoji/nt/pdfsave/PdfPdfCopy$Companion;->access$COLORCOMP(Lcom/metamoji/nt/pdfsave/PdfPdfCopy$Companion;Lcom/metamoji/pdf/core/PDFObj;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v7}, Lcom/metamoji/pdf/core/PDFObj;->get(I)Lcom/metamoji/pdf/core/PDFObj;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/metamoji/nt/pdfsave/PdfPdfCopy$Companion;->access$COLORCOMP(Lcom/metamoji/nt/pdfsave/PdfPdfCopy$Companion;Lcom/metamoji/pdf/core/PDFObj;)Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " RG\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/metamoji/nt/pdfsave/PdfPdfCopy$PdfObjWriter;->write(Ljava/lang/String;)V

    goto :goto_3

    .line 358
    :cond_9
    sget-object v3, Lcom/metamoji/nt/pdfsave/PdfPdfCopy;->Companion:Lcom/metamoji/nt/pdfsave/PdfPdfCopy$Companion;

    invoke-virtual {v0, v9}, Lcom/metamoji/pdf/core/PDFObj;->get(I)Lcom/metamoji/pdf/core/PDFObj;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/metamoji/nt/pdfsave/PdfPdfCopy$Companion;->access$COLORCOMP(Lcom/metamoji/nt/pdfsave/PdfPdfCopy$Companion;Lcom/metamoji/pdf/core/PDFObj;)Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " G\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/metamoji/nt/pdfsave/PdfPdfCopy$PdfObjWriter;->write(Ljava/lang/String;)V

    .line 363
    :goto_3
    sget-object v0, Lcom/metamoji/nt/pdfsave/PdfPdfCopy;->F5:Ljava/text/DecimalFormat;

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/text/DecimalFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " w\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/metamoji/nt/pdfsave/PdfPdfCopy$PdfObjWriter;->write(Ljava/lang/String;)V

    .line 364
    invoke-virtual {v1}, Lcom/metamoji/pdf/core/PDFObj;->isNull()Z

    move-result v0

    if-nez v0, :cond_a

    .line 366
    invoke-virtual {p1, v1}, Lcom/metamoji/nt/pdfsave/PdfPdfCopy$PdfObjWriter;->writeObj(Lcom/metamoji/pdf/core/PDFObj;)V

    .line 367
    const-string v0, " 0 d\n"

    invoke-virtual {p1, v0}, Lcom/metamoji/nt/pdfsave/PdfPdfCopy$PdfObjWriter;->write(Ljava/lang/String;)V

    :cond_a
    if-eqz v2, :cond_b

    .line 371
    sget-object v0, Lcom/metamoji/nt/pdfsave/PdfPdfCopy;->Companion:Lcom/metamoji/nt/pdfsave/PdfPdfCopy$Companion;

    iget v1, p2, Landroid/graphics/RectF;->left:F

    invoke-static {v0, v1}, Lcom/metamoji/nt/pdfsave/PdfPdfCopy$Companion;->access$COORD(Lcom/metamoji/nt/pdfsave/PdfPdfCopy$Companion;F)Ljava/lang/String;

    move-result-object v1

    iget v2, p2, Landroid/graphics/RectF;->top:F

    invoke-static {v0, v2}, Lcom/metamoji/nt/pdfsave/PdfPdfCopy$Companion;->access$COORD(Lcom/metamoji/nt/pdfsave/PdfPdfCopy$Companion;F)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " m\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/metamoji/nt/pdfsave/PdfPdfCopy$PdfObjWriter;->write(Ljava/lang/String;)V

    .line 372
    iget v1, p2, Landroid/graphics/RectF;->right:F

    invoke-static {v0, v1}, Lcom/metamoji/nt/pdfsave/PdfPdfCopy$Companion;->access$COORD(Lcom/metamoji/nt/pdfsave/PdfPdfCopy$Companion;F)Ljava/lang/String;

    move-result-object v1

    iget p2, p2, Landroid/graphics/RectF;->top:F

    invoke-static {v0, p2}, Lcom/metamoji/nt/pdfsave/PdfPdfCopy$Companion;->access$COORD(Lcom/metamoji/nt/pdfsave/PdfPdfCopy$Companion;F)Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, " l\n"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/metamoji/nt/pdfsave/PdfPdfCopy$PdfObjWriter;->write(Ljava/lang/String;)V

    goto :goto_4

    .line 374
    :cond_b
    sget-object v0, Lcom/metamoji/nt/pdfsave/PdfPdfCopy;->Companion:Lcom/metamoji/nt/pdfsave/PdfPdfCopy$Companion;

    iget v1, p2, Landroid/graphics/RectF;->left:F

    invoke-static {v0, v1}, Lcom/metamoji/nt/pdfsave/PdfPdfCopy$Companion;->access$COORD(Lcom/metamoji/nt/pdfsave/PdfPdfCopy$Companion;F)Ljava/lang/String;

    move-result-object v1

    iget v2, p2, Landroid/graphics/RectF;->top:F

    invoke-static {v0, v2}, Lcom/metamoji/nt/pdfsave/PdfPdfCopy$Companion;->access$COORD(Lcom/metamoji/nt/pdfsave/PdfPdfCopy$Companion;F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/graphics/RectF;->width()F

    move-result v3

    invoke-static {v0, v3}, Lcom/metamoji/nt/pdfsave/PdfPdfCopy$Companion;->access$COORD(Lcom/metamoji/nt/pdfsave/PdfPdfCopy$Companion;F)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Landroid/graphics/RectF;->height()F

    move-result p2

    invoke-static {v0, p2}, Lcom/metamoji/nt/pdfsave/PdfPdfCopy$Companion;->access$COORD(Lcom/metamoji/nt/pdfsave/PdfPdfCopy$Companion;F)Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, " re\n"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/metamoji/nt/pdfsave/PdfPdfCopy$PdfObjWriter;->write(Ljava/lang/String;)V

    .line 376
    :goto_4
    const-string p2, "S\n"

    invoke-virtual {p1, p2}, Lcom/metamoji/nt/pdfsave/PdfPdfCopy$PdfObjWriter;->write(Ljava/lang/String;)V

    .line 378
    const-string p2, "Q\n"

    invoke-virtual {p1, p2}, Lcom/metamoji/nt/pdfsave/PdfPdfCopy$PdfObjWriter;->write(Ljava/lang/String;)V

    return-void
.end method

.method private final writeRotation(Lcom/metamoji/pdf/PDFPage;)V
    .locals 8

    .line 214
    sget-object v0, Lcom/metamoji/pdf/core/MatrixUtil;->INSTANCE:Lcom/metamoji/pdf/core/MatrixUtil;

    invoke-virtual {p1}, Lcom/metamoji/pdf/PDFPage;->getRotate()I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    const v2, 0x40490fdb    # (float)Math.PI

    mul-float/2addr v1, v2

    const/16 v2, 0xb4

    int-to-float v2, v2

    div-float/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/metamoji/pdf/core/MatrixUtil;->rotate(F)Landroid/graphics/Matrix;

    move-result-object v0

    .line 215
    invoke-virtual {p1}, Lcom/metamoji/pdf/PDFPage;->getCropBox()Landroid/graphics/RectF;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/metamoji/pdf/core/MatrixUtilKt;->transformBounds(Landroid/graphics/Matrix;Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object p1

    .line 216
    iget v1, p1, Landroid/graphics/RectF;->left:F

    neg-float v1, v1

    iget p1, p1, Landroid/graphics/RectF;->top:F

    neg-float p1, p1

    invoke-static {v0, v1, p1}, Lcom/metamoji/pdf/core/MatrixUtilKt;->translate(Landroid/graphics/Matrix;FF)Landroid/graphics/Matrix;

    move-result-object p1

    .line 218
    invoke-virtual {p1}, Landroid/graphics/Matrix;->isIdentity()Z

    move-result v0

    if-nez v0, :cond_0

    .line 219
    invoke-static {p1}, Lcom/metamoji/pdf/core/MatrixUtilKt;->values(Landroid/graphics/Matrix;)[F

    move-result-object p1

    .line 220
    iget-object v0, p0, Lcom/metamoji/nt/pdfsave/PdfPdfCopy;->_writer:Lcom/metamoji/nt/pdfsave/PdfPdfCopy$PdfObjWriter;

    const/4 v1, 0x0

    aget v1, p1, v1

    const/4 v2, 0x3

    aget v2, p1, v2

    const/4 v3, 0x1

    aget v3, p1, v3

    const/4 v4, 0x4

    aget v4, p1, v4

    sget-object v5, Lcom/metamoji/nt/pdfsave/PdfPdfCopy;->Companion:Lcom/metamoji/nt/pdfsave/PdfPdfCopy$Companion;

    const/4 v6, 0x2

    aget v6, p1, v6

    invoke-static {v5, v6}, Lcom/metamoji/nt/pdfsave/PdfPdfCopy$Companion;->access$COORD(Lcom/metamoji/nt/pdfsave/PdfPdfCopy$Companion;F)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x5

    aget p1, p1, v7

    invoke-static {v5, p1}, Lcom/metamoji/nt/pdfsave/PdfPdfCopy$Companion;->access$COORD(Lcom/metamoji/nt/pdfsave/PdfPdfCopy$Companion;F)Ljava/lang/String;

    move-result-object p1

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v7, "/Matrix["

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, " "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, "]"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/metamoji/nt/pdfsave/PdfPdfCopy$PdfObjWriter;->write(Ljava/lang/String;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final savePage(IIILcom/metamoji/nt/pdfsave/PdfPdf;)V
    .locals 11

    .line 123
    iget-object v0, p0, Lcom/metamoji/nt/pdfsave/PdfPdfCopy;->_hiddenXObj:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 125
    iget-object v0, p0, Lcom/metamoji/nt/pdfsave/PdfPdfCopy;->_doc:Lcom/metamoji/pdf/PDFDocument;

    invoke-virtual {v0, p2}, Lcom/metamoji/pdf/PDFDocument;->getPage(I)Lcom/metamoji/pdf/PDFPage;

    move-result-object p2

    .line 126
    invoke-virtual {p2}, Lcom/metamoji/pdf/PDFPage;->getCropBox()Landroid/graphics/RectF;

    move-result-object v0

    .line 127
    invoke-direct {p0, p2}, Lcom/metamoji/nt/pdfsave/PdfPdfCopy;->saveResources(Lcom/metamoji/pdf/PDFPage;)Lkotlin/Pair;

    move-result-object v1

    invoke-virtual {v1}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    invoke-virtual {v1}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    .line 128
    invoke-direct {p0, p2}, Lcom/metamoji/nt/pdfsave/PdfPdfCopy;->initFormId(Lcom/metamoji/pdf/PDFPage;)V

    .line 130
    iget-object v3, p0, Lcom/metamoji/nt/pdfsave/PdfPdfCopy;->_writer:Lcom/metamoji/nt/pdfsave/PdfPdfCopy$PdfObjWriter;

    .line 131
    invoke-virtual {v3, p1}, Lcom/metamoji/nt/pdfsave/PdfPdfCopy$PdfObjWriter;->beginObject(I)I

    .line 133
    invoke-virtual {v3}, Lcom/metamoji/nt/pdfsave/PdfPdfCopy$PdfObjWriter;->beginDictionary()V

    const/4 p1, 0x1

    if-nez p3, :cond_0

    .line 137
    const-string v4, "/Subtype/Form"

    invoke-virtual {v3, v4}, Lcom/metamoji/nt/pdfsave/PdfPdfCopy$PdfObjWriter;->write(Ljava/lang/String;)V

    .line 138
    invoke-direct {p0, p2}, Lcom/metamoji/nt/pdfsave/PdfPdfCopy;->writeRotation(Lcom/metamoji/pdf/PDFPage;)V

    .line 141
    invoke-virtual {v3, p1}, Lcom/metamoji/nt/pdfsave/PdfPdfCopy$PdfObjWriter;->writeStreamProps(Z)V

    const/4 v4, 0x0

    const-string v5, "BBox"

    goto :goto_0

    .line 143
    :cond_0
    const-string v4, "/Type/Page"

    invoke-virtual {v3, v4}, Lcom/metamoji/nt/pdfsave/PdfPdfCopy$PdfObjWriter;->write(Ljava/lang/String;)V

    .line 144
    invoke-static {p3}, Lcom/metamoji/nt/pdfsave/PdfSaveToolKt;->OBJREF(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "/Parent "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/metamoji/nt/pdfsave/PdfPdfCopy$PdfObjWriter;->write(Ljava/lang/String;)V

    .line 145
    iget-object v4, p0, Lcom/metamoji/nt/pdfsave/PdfPdfCopy;->_xref:Lcom/metamoji/nt/pdfsave/PdfXref;

    invoke-virtual {v4}, Lcom/metamoji/nt/pdfsave/PdfXref;->addObject()I

    move-result v4

    .line 146
    invoke-static {v4}, Lcom/metamoji/nt/pdfsave/PdfSaveToolKt;->OBJREF(I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "/Contents "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/metamoji/nt/pdfsave/PdfPdfCopy$PdfObjWriter;->write(Ljava/lang/String;)V

    .line 147
    invoke-virtual {p2}, Lcom/metamoji/pdf/PDFPage;->getRotate()I

    move-result v5

    if-eqz v5, :cond_1

    .line 148
    invoke-virtual {p2}, Lcom/metamoji/pdf/PDFPage;->getRotate()I

    move-result v5

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "/Rotate "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/metamoji/nt/pdfsave/PdfPdfCopy$PdfObjWriter;->write(Ljava/lang/String;)V

    .line 150
    :cond_1
    const-string v5, "MediaBox"

    .line 152
    :goto_0
    sget-object v6, Lcom/metamoji/nt/pdfsave/PdfPdfCopy;->Companion:Lcom/metamoji/nt/pdfsave/PdfPdfCopy$Companion;

    iget v7, v0, Landroid/graphics/RectF;->left:F

    invoke-static {v6, v7}, Lcom/metamoji/nt/pdfsave/PdfPdfCopy$Companion;->access$COORD(Lcom/metamoji/nt/pdfsave/PdfPdfCopy$Companion;F)Ljava/lang/String;

    move-result-object v7

    iget v8, v0, Landroid/graphics/RectF;->top:F

    invoke-static {v6, v8}, Lcom/metamoji/nt/pdfsave/PdfPdfCopy$Companion;->access$COORD(Lcom/metamoji/nt/pdfsave/PdfPdfCopy$Companion;F)Ljava/lang/String;

    move-result-object v8

    iget v9, v0, Landroid/graphics/RectF;->right:F

    invoke-static {v6, v9}, Lcom/metamoji/nt/pdfsave/PdfPdfCopy$Companion;->access$COORD(Lcom/metamoji/nt/pdfsave/PdfPdfCopy$Companion;F)Ljava/lang/String;

    move-result-object v9

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    invoke-static {v6, v0}, Lcom/metamoji/nt/pdfsave/PdfPdfCopy$Companion;->access$COORD(Lcom/metamoji/nt/pdfsave/PdfPdfCopy$Companion;F)Ljava/lang/String;

    move-result-object v0

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v10, "/"

    invoke-direct {v6, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, "]"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/metamoji/nt/pdfsave/PdfPdfCopy$PdfObjWriter;->write(Ljava/lang/String;)V

    .line 153
    invoke-static {v2}, Lcom/metamoji/nt/pdfsave/PdfSaveToolKt;->OBJREF(I)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v5, "/Resources "

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/metamoji/nt/pdfsave/PdfPdfCopy$PdfObjWriter;->write(Ljava/lang/String;)V

    .line 154
    invoke-virtual {v3}, Lcom/metamoji/nt/pdfsave/PdfPdfCopy$PdfObjWriter;->endDictionary()V

    if-nez p3, :cond_2

    const/4 v0, 0x2

    const/4 v2, 0x0

    .line 158
    invoke-static {p0, p2, v2, v0, v2}, Lcom/metamoji/nt/pdfsave/PdfPdfCopy;->saveContents$default(Lcom/metamoji/nt/pdfsave/PdfPdfCopy;Lcom/metamoji/pdf/PDFPage;Lcom/metamoji/nt/pdfsave/PdfPdf;ILjava/lang/Object;)V

    .line 161
    :cond_2
    invoke-virtual {v3}, Lcom/metamoji/nt/pdfsave/PdfPdfCopy$PdfObjWriter;->endObject()V

    if-eqz p3, :cond_3

    .line 165
    invoke-virtual {v3, v4}, Lcom/metamoji/nt/pdfsave/PdfPdfCopy$PdfObjWriter;->beginObject(I)I

    .line 166
    invoke-virtual {v3}, Lcom/metamoji/nt/pdfsave/PdfPdfCopy$PdfObjWriter;->beginDictionary()V

    .line 167
    invoke-virtual {v3, p1}, Lcom/metamoji/nt/pdfsave/PdfPdfCopy$PdfObjWriter;->writeStreamProps(Z)V

    .line 168
    invoke-virtual {v3}, Lcom/metamoji/nt/pdfsave/PdfPdfCopy$PdfObjWriter;->endDictionary()V

    .line 169
    invoke-direct {p0, p2, p4}, Lcom/metamoji/nt/pdfsave/PdfPdfCopy;->saveContents(Lcom/metamoji/pdf/PDFPage;Lcom/metamoji/nt/pdfsave/PdfPdf;)V

    .line 170
    invoke-virtual {v3}, Lcom/metamoji/nt/pdfsave/PdfPdfCopy$PdfObjWriter;->endObject()V

    .line 174
    :cond_3
    invoke-direct {p0, v1}, Lcom/metamoji/nt/pdfsave/PdfPdfCopy;->saveXObject(I)V

    .line 176
    invoke-direct {p0}, Lcom/metamoji/nt/pdfsave/PdfPdfCopy;->saveHolded()V

    return-void
.end method
