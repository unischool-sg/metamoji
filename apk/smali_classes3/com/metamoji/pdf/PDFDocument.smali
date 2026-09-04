.class public final Lcom/metamoji/pdf/PDFDocument;
.super Ljava/lang/Object;
.source "PDFDocument.kt"

# interfaces
.implements Ljava/io/Closeable;
.implements Lcom/metamoji/pdf/core/IPDFDocument;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/pdf/PDFDocument$AuthState;,
        Lcom/metamoji/pdf/PDFDocument$Companion;,
        Lcom/metamoji/pdf/PDFDocument$RefPageIndex;,
        Lcom/metamoji/pdf/PDFDocument$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPDFDocument.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PDFDocument.kt\ncom/metamoji/pdf/PDFDocument\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,846:1\n11258#2:847\n11593#2,3:848\n*S KotlinDebug\n*F\n+ 1 PDFDocument.kt\ncom/metamoji/pdf/PDFDocument\n*L\n610#1:847\n610#1:848,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000v\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u000f\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010%\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0010\u0012\n\u0002\u0008\u0019\u0018\u0000 [2\u00020\u00012\u00020\u0002:\u0003YZ[B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\u0008\u0010\r\u001a\u00020\u000eH\u0016J\u0006\u0010\u000f\u001a\u00020\u000eJ\u0008\u0010\u0010\u001a\u00020\u0011H\u0002J\u0008\u0010\u0012\u001a\u00020\u0013H\u0002J\u0008\u0010\u0014\u001a\u00020\u000eH\u0002J\u0018\u0010\u0015\u001a\u00020\u000c2\u0006\u0010\u0016\u001a\u00020\u00082\u0006\u0010\u0017\u001a\u00020\u0008H\u0016J\u0018\u0010\u0018\u001a\u00020\u00192\u0006\u0010\u001a\u001a\u00020\u00132\u0006\u0010\u001b\u001a\u00020\u0013H\u0016J\u000e\u0010(\u001a\u00020)2\u0006\u0010*\u001a\u00020\u0008J\u000e\u0010+\u001a\u00020\u000c2\u0006\u0010*\u001a\u00020\u0008J\u001a\u0010,\u001a\u0004\u0018\u00010\u000c2\u0006\u0010-\u001a\u00020\u000c2\u0006\u0010*\u001a\u00020.H\u0002J\u0010\u0010@\u001a\u0002062\u0008\u0010A\u001a\u0004\u0018\u000100J\u0012\u0010B\u001a\u0002062\u0008\u0010A\u001a\u0004\u0018\u00010CH\u0002J\u0012\u0010D\u001a\u0002062\u0008\u0010A\u001a\u0004\u0018\u00010CH\u0002J\u001a\u0010E\u001a\u0002062\u0008\u0010A\u001a\u0004\u0018\u00010C2\u0006\u0010F\u001a\u00020\u000cH\u0002J\u001a\u0010G\u001a\u0002062\u0008\u0010A\u001a\u0004\u0018\u00010C2\u0006\u0010F\u001a\u00020\u000cH\u0002J\u001a\u0010H\u001a\u0002062\u0008\u0010I\u001a\u0004\u0018\u00010C2\u0006\u0010F\u001a\u00020\u000cH\u0002J\u001a\u0010J\u001a\u0002062\u0008\u0010I\u001a\u0004\u0018\u00010C2\u0006\u0010F\u001a\u00020\u000cH\u0002J\u0010\u0010K\u001a\u00020\u000e2\u0006\u0010F\u001a\u00020\u000cH\u0002J\u0018\u0010L\u001a\u00020\u000e2\u0006\u0010M\u001a\u00020C2\u0006\u0010F\u001a\u00020\u000cH\u0002J\u0010\u0010N\u001a\u0002092\u0006\u0010O\u001a\u000200H\u0016J\u0008\u0010P\u001a\u000209H\u0016J\"\u0010Q\u001a\u0004\u0018\u00010C2\u0006\u0010\u0016\u001a\u00020\u00082\u0006\u0010\u0017\u001a\u00020\u00082\u0006\u0010R\u001a\u00020\u0011H\u0016J\u0018\u0010S\u001a\u00020C2\u0006\u0010T\u001a\u00020C2\u0006\u0010U\u001a\u00020CH\u0016J\u000e\u0010V\u001a\u00020\u000c2\u0006\u0010W\u001a\u00020CJ\u000e\u0010V\u001a\u00020\u000c2\u0006\u0010W\u001a\u000200J\u0018\u0010X\u001a\u00020\u000c2\u0006\u0010-\u001a\u00020\u000c2\u0006\u0010W\u001a\u00020CH\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u000cX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u001c\u001a\u00020\u00088F\u00a2\u0006\u0006\u001a\u0004\u0008\u001d\u0010\u001eR\u0011\u0010\u001f\u001a\u00020\u000c8F\u00a2\u0006\u0006\u001a\u0004\u0008 \u0010!R\u0011\u0010\"\u001a\u00020\u000c8F\u00a2\u0006\u0006\u001a\u0004\u0008#\u0010!R\u0011\u0010$\u001a\u00020\u000c8F\u00a2\u0006\u0006\u001a\u0004\u0008%\u0010!R\u0011\u0010&\u001a\u00020\u00088F\u00a2\u0006\u0006\u001a\u0004\u0008\'\u0010\u001eR\u0011\u0010/\u001a\u0002008F\u00a2\u0006\u0006\u001a\u0004\u00081\u00102R\u0011\u00103\u001a\u0002008F\u00a2\u0006\u0006\u001a\u0004\u00084\u00102R\u000e\u00105\u001a\u000206X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001a\u00107\u001a\u000e\u0012\u0004\u0012\u000200\u0012\u0004\u0012\u00020908X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010:\u001a\u0004\u0018\u000109X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010;\u001a\u0004\u0018\u000109X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010<\u001a\u0004\u0018\u000109X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0011\u0010=\u001a\u00020\u00118F\u00a2\u0006\u0006\u001a\u0004\u0008=\u0010>R\u0011\u0010?\u001a\u00020\u00118F\u00a2\u0006\u0006\u001a\u0004\u0008?\u0010>\u00a8\u0006\\"
    }
    d2 = {
        "Lcom/metamoji/pdf/PDFDocument;",
        "Ljava/io/Closeable;",
        "Lcom/metamoji/pdf/core/IPDFDocument;",
        "_file",
        "Lcom/metamoji/pdf/IPDFFile;",
        "<init>",
        "(Lcom/metamoji/pdf/IPDFFile;)V",
        "_ver",
        "",
        "_xref",
        "Lcom/metamoji/pdf/core/PDFXRef;",
        "_trailer",
        "Lcom/metamoji/pdf/core/PDFObj;",
        "close",
        "",
        "load",
        "readHeader",
        "",
        "getXRefPos",
        "",
        "checkVersionOverride",
        "getObject",
        "id",
        "gen",
        "openStream",
        "Lcom/metamoji/pdf/core/PDFInputStream;",
        "offset",
        "length",
        "version",
        "getVersion",
        "()I",
        "trailer",
        "getTrailer",
        "()Lcom/metamoji/pdf/core/PDFObj;",
        "catalog",
        "getCatalog",
        "info",
        "getInfo",
        "pageCount",
        "getPageCount",
        "getPage",
        "Lcom/metamoji/pdf/PDFPage;",
        "index",
        "getPageObj",
        "_getPageObj",
        "node",
        "Lcom/metamoji/pdf/PDFDocument$RefPageIndex;",
        "title",
        "",
        "getTitle",
        "()Ljava/lang/String;",
        "author",
        "getAuthor",
        "_auth",
        "Lcom/metamoji/pdf/PDFDocument$AuthState;",
        "_cf",
        "",
        "Lcom/metamoji/pdf/core/CryptFilter;",
        "_strF",
        "_stmF",
        "_eff",
        "isEncrypted",
        "()Z",
        "isLocked",
        "unlock",
        "password",
        "checkOwnerPassword",
        "",
        "checkUserPassword",
        "checkOwnerPasswordV1",
        "encrypt",
        "checkUserPasswordV1",
        "checkOwnerPasswordV5",
        "password_",
        "checkUserPasswordV5",
        "initCF",
        "setCryptoKey",
        "key",
        "getCryptFilter",
        "cf",
        "getStmF",
        "getCryptoKey",
        "stream",
        "decrypt",
        "data",
        "cryptoKey",
        "getByName",
        "name",
        "searchInNameTree",
        "RefPageIndex",
        "AuthState",
        "Companion",
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
.field public static final Companion:Lcom/metamoji/pdf/PDFDocument$Companion;

.field private static final DEFAULT_KEY:[B


# instance fields
.field private _auth:Lcom/metamoji/pdf/PDFDocument$AuthState;

.field private _cf:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/metamoji/pdf/core/CryptFilter;",
            ">;"
        }
    .end annotation
.end field

.field private _eff:Lcom/metamoji/pdf/core/CryptFilter;

.field private _file:Lcom/metamoji/pdf/IPDFFile;

.field private _stmF:Lcom/metamoji/pdf/core/CryptFilter;

.field private _strF:Lcom/metamoji/pdf/core/CryptFilter;

.field private _trailer:Lcom/metamoji/pdf/core/PDFObj;

.field private _ver:I

.field private final _xref:Lcom/metamoji/pdf/core/PDFXRef;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/metamoji/pdf/PDFDocument$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/metamoji/pdf/PDFDocument$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/metamoji/pdf/PDFDocument;->Companion:Lcom/metamoji/pdf/PDFDocument$Companion;

    const/16 v0, 0x20

    .line 609
    new-array v1, v0, [I

    fill-array-data v1, :array_0

    .line 847
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v2, Ljava/util/Collection;

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_0

    .line 848
    aget v4, v1, v3

    int-to-byte v4, v4

    .line 610
    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    .line 849
    invoke-interface {v2, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 850
    :cond_0
    check-cast v2, Ljava/util/List;

    .line 847
    check-cast v2, Ljava/util/Collection;

    .line 610
    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->toByteArray(Ljava/util/Collection;)[B

    move-result-object v0

    sput-object v0, Lcom/metamoji/pdf/PDFDocument;->DEFAULT_KEY:[B

    return-void

    nop

    :array_0
    .array-data 4
        0x28
        0xbf
        0x4e
        0x5e
        0x4e
        0x75
        0x8a
        0x41
        0x64
        0x0
        0x4e
        0x56
        0xff
        0xfa
        0x1
        0x8
        0x2e
        0x2e
        0x0
        0xb6
        0xd0
        0x68
        0x3e
        0x80
        0x2f
        0xc
        0xa9
        0xfe
        0x64
        0x53
        0x69
        0x7a
    .end array-data
.end method

.method public constructor <init>(Lcom/metamoji/pdf/IPDFFile;)V
    .locals 1

    const-string v0, "_file"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/metamoji/pdf/PDFDocument;->_file:Lcom/metamoji/pdf/IPDFFile;

    const/4 p1, -0x1

    .line 63
    iput p1, p0, Lcom/metamoji/pdf/PDFDocument;->_ver:I

    .line 64
    new-instance p1, Lcom/metamoji/pdf/core/PDFXRef;

    move-object v0, p0

    check-cast v0, Lcom/metamoji/pdf/core/IPDFDocument;

    invoke-direct {p1, v0}, Lcom/metamoji/pdf/core/PDFXRef;-><init>(Lcom/metamoji/pdf/core/IPDFDocument;)V

    iput-object p1, p0, Lcom/metamoji/pdf/PDFDocument;->_xref:Lcom/metamoji/pdf/core/PDFXRef;

    .line 66
    sget-object p1, Lcom/metamoji/pdf/core/PDFObj;->Companion:Lcom/metamoji/pdf/core/PDFObj$Companion;

    invoke-virtual {p1}, Lcom/metamoji/pdf/core/PDFObj$Companion;->getNull()Lcom/metamoji/pdf/core/PDFObj;

    move-result-object p1

    iput-object p1, p0, Lcom/metamoji/pdf/PDFDocument;->_trailer:Lcom/metamoji/pdf/core/PDFObj;

    .line 248
    sget-object p1, Lcom/metamoji/pdf/PDFDocument$AuthState;->NONE:Lcom/metamoji/pdf/PDFDocument$AuthState;

    iput-object p1, p0, Lcom/metamoji/pdf/PDFDocument;->_auth:Lcom/metamoji/pdf/PDFDocument$AuthState;

    .line 250
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast p1, Ljava/util/Map;

    iput-object p1, p0, Lcom/metamoji/pdf/PDFDocument;->_cf:Ljava/util/Map;

    .line 588
    sget-object p1, Lcom/metamoji/pdf/core/PDFObj;->Companion:Lcom/metamoji/pdf/core/PDFObj$Companion;

    invoke-virtual {p1}, Lcom/metamoji/pdf/core/PDFObj$Companion;->getNull()Lcom/metamoji/pdf/core/PDFObj;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/metamoji/pdf/PDFDocument;->initCF(Lcom/metamoji/pdf/core/PDFObj;)V

    return-void
.end method

.method private final _getPageObj(Lcom/metamoji/pdf/core/PDFObj;Lcom/metamoji/pdf/PDFDocument$RefPageIndex;)Lcom/metamoji/pdf/core/PDFObj;
    .locals 3

    .line 205
    const-string v0, "Type"

    invoke-virtual {p1, v0}, Lcom/metamoji/pdf/core/PDFObj;->get(Ljava/lang/String;)Lcom/metamoji/pdf/core/PDFObj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/pdf/core/PDFObj;->name()Ljava/lang/String;

    move-result-object v0

    .line 207
    const-string v1, "Page"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 208
    invoke-virtual {p2}, Lcom/metamoji/pdf/PDFDocument$RefPageIndex;->getValue()I

    move-result v0

    if-nez v0, :cond_0

    return-object p1

    .line 209
    :cond_0
    invoke-virtual {p2}, Lcom/metamoji/pdf/PDFDocument$RefPageIndex;->getValue()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {p2, p1}, Lcom/metamoji/pdf/PDFDocument$RefPageIndex;->setValue(I)V

    return-object v2

    .line 212
    :cond_1
    const-string v1, "Pages"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 214
    const-string v0, "Count"

    invoke-virtual {p1, v0}, Lcom/metamoji/pdf/core/PDFObj;->get(Ljava/lang/String;)Lcom/metamoji/pdf/core/PDFObj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/pdf/core/PDFObj;->intVal()I

    move-result v0

    .line 215
    invoke-virtual {p2}, Lcom/metamoji/pdf/PDFDocument$RefPageIndex;->getValue()I

    move-result v1

    if-lt v1, v0, :cond_2

    .line 216
    invoke-virtual {p2}, Lcom/metamoji/pdf/PDFDocument$RefPageIndex;->getValue()I

    move-result p1

    sub-int/2addr p1, v0

    invoke-virtual {p2, p1}, Lcom/metamoji/pdf/PDFDocument$RefPageIndex;->setValue(I)V

    return-object v2

    .line 220
    :cond_2
    const-string v0, "Kids"

    invoke-virtual {p1, v0}, Lcom/metamoji/pdf/core/PDFObj;->get(Ljava/lang/String;)Lcom/metamoji/pdf/core/PDFObj;

    move-result-object p1

    invoke-virtual {p1}, Lcom/metamoji/pdf/core/PDFObj;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/metamoji/pdf/core/PDFObj;

    .line 221
    invoke-direct {p0, v0, p2}, Lcom/metamoji/pdf/PDFDocument;->_getPageObj(Lcom/metamoji/pdf/core/PDFObj;Lcom/metamoji/pdf/PDFDocument$RefPageIndex;)Lcom/metamoji/pdf/core/PDFObj;

    move-result-object v0

    if-eqz v0, :cond_3

    return-object v0

    :cond_4
    return-object v2

    .line 212
    :cond_5
    new-instance p1, Lcom/metamoji/pdf/core/PDFException;

    const-string/jumbo p2, "unknown page tree type"

    invoke-direct {p1, p2}, Lcom/metamoji/pdf/core/PDFException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static final synthetic access$getDEFAULT_KEY$cp()[B
    .locals 1

    .line 62
    sget-object v0, Lcom/metamoji/pdf/PDFDocument;->DEFAULT_KEY:[B

    return-object v0
.end method

.method private final checkOwnerPassword([B)Lcom/metamoji/pdf/PDFDocument$AuthState;
    .locals 3

    .line 292
    iget-object v0, p0, Lcom/metamoji/pdf/PDFDocument;->_trailer:Lcom/metamoji/pdf/core/PDFObj;

    const-string v1, "Encrypt"

    invoke-virtual {v0, v1}, Lcom/metamoji/pdf/core/PDFObj;->contains(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 293
    sget-object p1, Lcom/metamoji/pdf/PDFDocument$AuthState;->NONE:Lcom/metamoji/pdf/PDFDocument$AuthState;

    return-object p1

    .line 296
    :cond_0
    iget-object v0, p0, Lcom/metamoji/pdf/PDFDocument;->_trailer:Lcom/metamoji/pdf/core/PDFObj;

    invoke-virtual {v0, v1}, Lcom/metamoji/pdf/core/PDFObj;->get(Ljava/lang/String;)Lcom/metamoji/pdf/core/PDFObj;

    move-result-object v0

    .line 298
    const-string v1, "Filter"

    invoke-virtual {v0, v1}, Lcom/metamoji/pdf/core/PDFObj;->get(Ljava/lang/String;)Lcom/metamoji/pdf/core/PDFObj;

    move-result-object v1

    invoke-virtual {v1}, Lcom/metamoji/pdf/core/PDFObj;->name()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Standard"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 299
    sget-object p1, Lcom/metamoji/pdf/PDFDocument$AuthState;->UNSUPPORTED:Lcom/metamoji/pdf/PDFDocument$AuthState;

    return-object p1

    .line 302
    :cond_1
    const-string v1, "V"

    invoke-virtual {v0, v1}, Lcom/metamoji/pdf/core/PDFObj;->get(Ljava/lang/String;)Lcom/metamoji/pdf/core/PDFObj;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/metamoji/pdf/core/PDFObj;->intVal(I)I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_3

    const/4 v2, 0x2

    if-eq v1, v2, :cond_3

    const/4 v2, 0x4

    if-eq v1, v2, :cond_3

    const/4 v2, 0x5

    if-eq v1, v2, :cond_2

    .line 306
    sget-object p1, Lcom/metamoji/pdf/PDFDocument$AuthState;->UNSUPPORTED:Lcom/metamoji/pdf/PDFDocument$AuthState;

    return-object p1

    .line 305
    :cond_2
    invoke-direct {p0, p1, v0}, Lcom/metamoji/pdf/PDFDocument;->checkOwnerPasswordV5([BLcom/metamoji/pdf/core/PDFObj;)Lcom/metamoji/pdf/PDFDocument$AuthState;

    move-result-object p1

    return-object p1

    .line 304
    :cond_3
    invoke-direct {p0, p1, v0}, Lcom/metamoji/pdf/PDFDocument;->checkOwnerPasswordV1([BLcom/metamoji/pdf/core/PDFObj;)Lcom/metamoji/pdf/PDFDocument$AuthState;

    move-result-object p1

    return-object p1
.end method

.method private final checkOwnerPasswordV1([BLcom/metamoji/pdf/core/PDFObj;)Lcom/metamoji/pdf/PDFDocument$AuthState;
    .locals 7

    .line 332
    const-string v0, "O"

    invoke-virtual {p2, v0}, Lcom/metamoji/pdf/core/PDFObj;->get(Ljava/lang/String;)Lcom/metamoji/pdf/core/PDFObj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/pdf/core/PDFObj;->stringVal()[B

    move-result-object v0

    .line 333
    const-string v1, "R"

    invoke-virtual {p2, v1}, Lcom/metamoji/pdf/core/PDFObj;->get(Ljava/lang/String;)Lcom/metamoji/pdf/core/PDFObj;

    move-result-object v1

    invoke-virtual {v1}, Lcom/metamoji/pdf/core/PDFObj;->intVal()I

    move-result v1

    .line 335
    const-string v2, "Length"

    invoke-virtual {p2, v2}, Lcom/metamoji/pdf/core/PDFObj;->get(Ljava/lang/String;)Lcom/metamoji/pdf/core/PDFObj;

    move-result-object v2

    const/4 v3, 0x4

    if-ne v1, v3, :cond_0

    const/16 v3, 0x80

    goto :goto_0

    :cond_0
    const/16 v3, 0x28

    :goto_0
    invoke-virtual {v2, v3}, Lcom/metamoji/pdf/core/PDFObj;->intVal(I)I

    move-result v2

    div-int/lit8 v2, v2, 0x8

    .line 337
    sget-object v3, Lcom/metamoji/pdf/core/HashAlgorithm;->Companion:Lcom/metamoji/pdf/core/HashAlgorithm$Companion;

    invoke-virtual {v3}, Lcom/metamoji/pdf/core/HashAlgorithm$Companion;->createMD5()Lcom/metamoji/pdf/core/HashAlgorithm;

    move-result-object v3

    .line 338
    sget-object v4, Lcom/metamoji/pdf/PDFDocument;->Companion:Lcom/metamoji/pdf/PDFDocument$Companion;

    invoke-virtual {v4, p1}, Lcom/metamoji/pdf/PDFDocument$Companion;->defaultKey([B)[B

    move-result-object p1

    invoke-virtual {v3, p1}, Lcom/metamoji/pdf/core/HashAlgorithm;->update([B)V

    .line 339
    invoke-virtual {v3}, Lcom/metamoji/pdf/core/HashAlgorithm;->finalize()[B

    move-result-object p1

    const/4 v4, 0x2

    if-ne v1, v4, :cond_1

    .line 343
    invoke-static {p1, v2}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p1

    const-string v1, "copyOf(...)"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 344
    sget-object v1, Lcom/metamoji/pdf/core/RC4;->INSTANCE:Lcom/metamoji/pdf/core/RC4;

    invoke-virtual {v1, v0, p1}, Lcom/metamoji/pdf/core/RC4;->decrypt([B[B)[B

    move-result-object p1

    goto :goto_4

    :cond_1
    const/4 v1, 0x0

    move v4, v1

    :goto_1
    const/16 v5, 0x32

    if-ge v4, v5, :cond_2

    .line 348
    invoke-virtual {v3, p1}, Lcom/metamoji/pdf/core/HashAlgorithm;->update([B)V

    .line 349
    invoke-virtual {v3}, Lcom/metamoji/pdf/core/HashAlgorithm;->finalize()[B

    move-result-object p1

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 352
    :cond_2
    new-array v3, v2, [B

    const/16 v4, 0x13

    :goto_2
    const/4 v5, -0x1

    if-ge v5, v4, :cond_4

    move v5, v1

    :goto_3
    if-ge v5, v2, :cond_3

    .line 355
    aget-byte v6, p1, v5

    xor-int/2addr v6, v4

    int-to-byte v6, v6

    aput-byte v6, v3, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 357
    :cond_3
    sget-object v5, Lcom/metamoji/pdf/core/RC4;->INSTANCE:Lcom/metamoji/pdf/core/RC4;

    invoke-virtual {v5, v0, v3}, Lcom/metamoji/pdf/core/RC4;->decrypt([B[B)[B

    move-result-object v0

    add-int/lit8 v4, v4, -0x1

    goto :goto_2

    :cond_4
    move-object p1, v0

    .line 361
    :goto_4
    invoke-direct {p0, p1, p2}, Lcom/metamoji/pdf/PDFDocument;->checkUserPasswordV1([BLcom/metamoji/pdf/core/PDFObj;)Lcom/metamoji/pdf/PDFDocument$AuthState;

    move-result-object p1

    .line 362
    sget-object p2, Lcom/metamoji/pdf/PDFDocument$AuthState;->USER:Lcom/metamoji/pdf/PDFDocument$AuthState;

    if-ne p1, p2, :cond_5

    .line 363
    sget-object p1, Lcom/metamoji/pdf/PDFDocument$AuthState;->OWNER:Lcom/metamoji/pdf/PDFDocument$AuthState;

    :cond_5
    return-object p1
.end method

.method private final checkOwnerPasswordV5([BLcom/metamoji/pdf/core/PDFObj;)Lcom/metamoji/pdf/PDFDocument$AuthState;
    .locals 8

    if-nez p1, :cond_0

    .line 428
    invoke-static {}, Lcom/metamoji/pdf/core/PDFParserKt;->getEMPTY_BYTES()[B

    move-result-object p1

    .line 430
    :cond_0
    const-string v0, "R"

    invoke-virtual {p2, v0}, Lcom/metamoji/pdf/core/PDFObj;->get(Ljava/lang/String;)Lcom/metamoji/pdf/core/PDFObj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/pdf/core/PDFObj;->intVal()I

    move-result v0

    .line 431
    const-string v1, "O"

    invoke-virtual {p2, v1}, Lcom/metamoji/pdf/core/PDFObj;->get(Ljava/lang/String;)Lcom/metamoji/pdf/core/PDFObj;

    move-result-object v1

    invoke-virtual {v1}, Lcom/metamoji/pdf/core/PDFObj;->stringVal()[B

    move-result-object v1

    const/16 v2, 0x30

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v1

    const-string v3, "copyOf(...)"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 432
    const-string v4, "U"

    invoke-virtual {p2, v4}, Lcom/metamoji/pdf/core/PDFObj;->get(Ljava/lang/String;)Lcom/metamoji/pdf/core/PDFObj;

    move-result-object v4

    invoke-virtual {v4}, Lcom/metamoji/pdf/core/PDFObj;->stringVal()[B

    move-result-object v4

    invoke-static {v4, v2}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v4

    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v3, 0x20

    const/16 v5, 0x28

    .line 434
    invoke-static {v3, v5}, Lkotlin/ranges/RangesKt;->until(II)Lkotlin/ranges/IntRange;

    move-result-object v6

    invoke-static {v1, v6}, Lkotlin/collections/ArraysKt;->sliceArray([BLkotlin/ranges/IntRange;)[B

    move-result-object v6

    .line 435
    sget-object v7, Lcom/metamoji/pdf/PDFDocument;->Companion:Lcom/metamoji/pdf/PDFDocument$Companion;

    invoke-virtual {v7, v0, p1, v6, v4}, Lcom/metamoji/pdf/PDFDocument$Companion;->hashV5(I[B[B[B)[B

    move-result-object v6

    .line 436
    invoke-static {v6, v4, v3}, Lcom/metamoji/pdf/PDFDocumentKt;->access$checkBytes([B[BI)Z

    move-result v3

    if-nez v3, :cond_1

    .line 437
    sget-object p1, Lcom/metamoji/pdf/PDFDocument$AuthState;->REJECT:Lcom/metamoji/pdf/PDFDocument$AuthState;

    return-object p1

    .line 440
    :cond_1
    const-string v3, "OE"

    invoke-virtual {p2, v3}, Lcom/metamoji/pdf/core/PDFObj;->get(Ljava/lang/String;)Lcom/metamoji/pdf/core/PDFObj;

    move-result-object v3

    invoke-virtual {v3}, Lcom/metamoji/pdf/core/PDFObj;->stringVal()[B

    move-result-object v3

    .line 441
    invoke-static {v5, v2}, Lkotlin/ranges/RangesKt;->until(II)Lkotlin/ranges/IntRange;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/collections/ArraysKt;->sliceArray([BLkotlin/ranges/IntRange;)[B

    move-result-object v1

    .line 442
    invoke-virtual {v7, v0, p1, v1, v4}, Lcom/metamoji/pdf/PDFDocument$Companion;->hashV5(I[B[B[B)[B

    move-result-object p1

    .line 443
    sget-object v0, Lcom/metamoji/pdf/core/AES;->INSTANCE:Lcom/metamoji/pdf/core/AES;

    const/16 v1, 0x10

    new-array v1, v1, [B

    const/4 v2, 0x0

    invoke-virtual {v0, v3, p1, v1, v2}, Lcom/metamoji/pdf/core/AES;->decrypt([B[B[BZ)[B

    move-result-object p1

    .line 444
    invoke-direct {p0, p1, p2}, Lcom/metamoji/pdf/PDFDocument;->setCryptoKey([BLcom/metamoji/pdf/core/PDFObj;)V

    .line 445
    sget-object p1, Lcom/metamoji/pdf/PDFDocument$AuthState;->OWNER:Lcom/metamoji/pdf/PDFDocument$AuthState;

    return-object p1
.end method

.method private final checkUserPassword([B)Lcom/metamoji/pdf/PDFDocument$AuthState;
    .locals 3

    .line 311
    iget-object v0, p0, Lcom/metamoji/pdf/PDFDocument;->_trailer:Lcom/metamoji/pdf/core/PDFObj;

    const-string v1, "Encrypt"

    invoke-virtual {v0, v1}, Lcom/metamoji/pdf/core/PDFObj;->contains(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 312
    sget-object p1, Lcom/metamoji/pdf/PDFDocument$AuthState;->NONE:Lcom/metamoji/pdf/PDFDocument$AuthState;

    return-object p1

    .line 315
    :cond_0
    iget-object v0, p0, Lcom/metamoji/pdf/PDFDocument;->_trailer:Lcom/metamoji/pdf/core/PDFObj;

    invoke-virtual {v0, v1}, Lcom/metamoji/pdf/core/PDFObj;->get(Ljava/lang/String;)Lcom/metamoji/pdf/core/PDFObj;

    move-result-object v0

    .line 317
    const-string v1, "Filter"

    invoke-virtual {v0, v1}, Lcom/metamoji/pdf/core/PDFObj;->get(Ljava/lang/String;)Lcom/metamoji/pdf/core/PDFObj;

    move-result-object v1

    invoke-virtual {v1}, Lcom/metamoji/pdf/core/PDFObj;->name()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Standard"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 318
    sget-object p1, Lcom/metamoji/pdf/PDFDocument$AuthState;->UNSUPPORTED:Lcom/metamoji/pdf/PDFDocument$AuthState;

    return-object p1

    .line 321
    :cond_1
    const-string v1, "V"

    invoke-virtual {v0, v1}, Lcom/metamoji/pdf/core/PDFObj;->get(Ljava/lang/String;)Lcom/metamoji/pdf/core/PDFObj;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/metamoji/pdf/core/PDFObj;->intVal(I)I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_3

    const/4 v2, 0x2

    if-eq v1, v2, :cond_3

    const/4 v2, 0x4

    if-eq v1, v2, :cond_3

    const/4 v2, 0x5

    if-eq v1, v2, :cond_2

    .line 325
    sget-object p1, Lcom/metamoji/pdf/PDFDocument$AuthState;->UNSUPPORTED:Lcom/metamoji/pdf/PDFDocument$AuthState;

    return-object p1

    .line 324
    :cond_2
    invoke-direct {p0, p1, v0}, Lcom/metamoji/pdf/PDFDocument;->checkUserPasswordV5([BLcom/metamoji/pdf/core/PDFObj;)Lcom/metamoji/pdf/PDFDocument$AuthState;

    move-result-object p1

    return-object p1

    .line 323
    :cond_3
    invoke-direct {p0, p1, v0}, Lcom/metamoji/pdf/PDFDocument;->checkUserPasswordV1([BLcom/metamoji/pdf/core/PDFObj;)Lcom/metamoji/pdf/PDFDocument$AuthState;

    move-result-object p1

    return-object p1
.end method

.method private final checkUserPasswordV1([BLcom/metamoji/pdf/core/PDFObj;)Lcom/metamoji/pdf/PDFDocument$AuthState;
    .locals 13

    .line 369
    iget-object v0, p0, Lcom/metamoji/pdf/PDFDocument;->_trailer:Lcom/metamoji/pdf/core/PDFObj;

    const-string v1, "ID"

    invoke-virtual {v0, v1}, Lcom/metamoji/pdf/core/PDFObj;->get(Ljava/lang/String;)Lcom/metamoji/pdf/core/PDFObj;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/metamoji/pdf/core/PDFObj;->get(I)Lcom/metamoji/pdf/core/PDFObj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/pdf/core/PDFObj;->stringVal()[B

    move-result-object v0

    .line 370
    const-string v2, "O"

    invoke-virtual {p2, v2}, Lcom/metamoji/pdf/core/PDFObj;->get(Ljava/lang/String;)Lcom/metamoji/pdf/core/PDFObj;

    move-result-object v2

    invoke-virtual {v2}, Lcom/metamoji/pdf/core/PDFObj;->stringVal()[B

    move-result-object v2

    .line 371
    const-string v3, "U"

    invoke-virtual {p2, v3}, Lcom/metamoji/pdf/core/PDFObj;->get(Ljava/lang/String;)Lcom/metamoji/pdf/core/PDFObj;

    move-result-object v3

    invoke-virtual {v3}, Lcom/metamoji/pdf/core/PDFObj;->stringVal()[B

    move-result-object v3

    .line 372
    const-string v4, "R"

    invoke-virtual {p2, v4}, Lcom/metamoji/pdf/core/PDFObj;->get(Ljava/lang/String;)Lcom/metamoji/pdf/core/PDFObj;

    move-result-object v4

    invoke-virtual {v4}, Lcom/metamoji/pdf/core/PDFObj;->intVal()I

    move-result v4

    .line 373
    const-string v5, "P"

    invoke-virtual {p2, v5}, Lcom/metamoji/pdf/core/PDFObj;->get(Ljava/lang/String;)Lcom/metamoji/pdf/core/PDFObj;

    move-result-object v5

    invoke-virtual {v5}, Lcom/metamoji/pdf/core/PDFObj;->doubleVal()D

    move-result-wide v5

    double-to-long v5, v5

    const/4 v7, 0x4

    .line 374
    new-array v8, v7, [B

    move v9, v1

    :goto_0
    const/16 v10, 0x8

    if-ge v9, v7, :cond_0

    const-wide/16 v11, 0xff

    and-long/2addr v11, v5

    long-to-int v11, v11

    int-to-byte v11, v11

    .line 376
    aput-byte v11, v8, v9

    shr-long/2addr v5, v10

    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 380
    :cond_0
    const-string v5, "Length"

    invoke-virtual {p2, v5}, Lcom/metamoji/pdf/core/PDFObj;->get(Ljava/lang/String;)Lcom/metamoji/pdf/core/PDFObj;

    move-result-object v5

    if-ne v4, v7, :cond_1

    const/16 v6, 0x80

    goto :goto_1

    :cond_1
    const/16 v6, 0x28

    :goto_1
    invoke-virtual {v5, v6}, Lcom/metamoji/pdf/core/PDFObj;->intVal(I)I

    move-result v5

    div-int/2addr v5, v10

    .line 382
    sget-object v6, Lcom/metamoji/pdf/core/HashAlgorithm;->Companion:Lcom/metamoji/pdf/core/HashAlgorithm$Companion;

    invoke-virtual {v6}, Lcom/metamoji/pdf/core/HashAlgorithm$Companion;->createMD5()Lcom/metamoji/pdf/core/HashAlgorithm;

    move-result-object v6

    .line 383
    sget-object v9, Lcom/metamoji/pdf/PDFDocument;->Companion:Lcom/metamoji/pdf/PDFDocument$Companion;

    invoke-virtual {v9, p1}, Lcom/metamoji/pdf/PDFDocument$Companion;->defaultKey([B)[B

    move-result-object p1

    invoke-virtual {v6, p1}, Lcom/metamoji/pdf/core/HashAlgorithm;->update([B)V

    .line 384
    invoke-virtual {v6, v2}, Lcom/metamoji/pdf/core/HashAlgorithm;->update([B)V

    .line 385
    invoke-virtual {v6, v8}, Lcom/metamoji/pdf/core/HashAlgorithm;->update([B)V

    .line 386
    invoke-virtual {v6, v0}, Lcom/metamoji/pdf/core/HashAlgorithm;->update([B)V

    if-lt v4, v7, :cond_2

    .line 387
    const-string p1, "EncryptMetadata"

    invoke-virtual {p2, p1}, Lcom/metamoji/pdf/core/PDFObj;->get(Ljava/lang/String;)Lcom/metamoji/pdf/core/PDFObj;

    move-result-object p1

    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Lcom/metamoji/pdf/core/PDFObj;->boolVal(Z)Z

    move-result p1

    if-nez p1, :cond_2

    .line 388
    invoke-static {}, Lcom/metamoji/pdf/PDFDocumentKt;->access$getFF4$p()[B

    move-result-object p1

    invoke-virtual {v6, p1}, Lcom/metamoji/pdf/core/HashAlgorithm;->update([B)V

    .line 390
    :cond_2
    invoke-virtual {v6}, Lcom/metamoji/pdf/core/HashAlgorithm;->finalize()[B

    move-result-object p1

    invoke-static {p1, v5}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p1

    const-string v2, "copyOf(...)"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v7, 0x2

    if-ne v4, v7, :cond_3

    .line 393
    sget-object v0, Lcom/metamoji/pdf/core/RC4;->INSTANCE:Lcom/metamoji/pdf/core/RC4;

    sget-object v1, Lcom/metamoji/pdf/PDFDocument;->DEFAULT_KEY:[B

    invoke-virtual {v0, v1, p1}, Lcom/metamoji/pdf/core/RC4;->encrypt([B[B)[B

    move-result-object v0

    const/16 v1, 0x20

    .line 394
    invoke-static {v0, v3, v1}, Lcom/metamoji/pdf/PDFDocumentKt;->access$checkBytes([B[BI)Z

    move-result v0

    if-nez v0, :cond_7

    .line 395
    sget-object p1, Lcom/metamoji/pdf/PDFDocument$AuthState;->REJECT:Lcom/metamoji/pdf/PDFDocument$AuthState;

    return-object p1

    :cond_3
    move v4, v1

    :goto_2
    const/16 v7, 0x32

    if-ge v4, v7, :cond_4

    .line 400
    invoke-virtual {v6, p1}, Lcom/metamoji/pdf/core/HashAlgorithm;->update([B)V

    .line 401
    invoke-virtual {v6}, Lcom/metamoji/pdf/core/HashAlgorithm;->finalize()[B

    move-result-object p1

    invoke-static {p1, v5}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p1

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 405
    :cond_4
    sget-object v2, Lcom/metamoji/pdf/PDFDocument;->DEFAULT_KEY:[B

    invoke-virtual {v6, v2}, Lcom/metamoji/pdf/core/HashAlgorithm;->update([B)V

    .line 406
    invoke-virtual {v6, v0}, Lcom/metamoji/pdf/core/HashAlgorithm;->update([B)V

    .line 407
    invoke-virtual {v6}, Lcom/metamoji/pdf/core/HashAlgorithm;->finalize()[B

    move-result-object v0

    .line 409
    new-array v2, v5, [B

    move v4, v1

    :goto_3
    const/16 v6, 0x14

    if-ge v4, v6, :cond_6

    move v6, v1

    :goto_4
    if-ge v6, v5, :cond_5

    .line 412
    aget-byte v7, p1, v6

    xor-int/2addr v7, v4

    int-to-byte v7, v7

    aput-byte v7, v2, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    .line 414
    :cond_5
    sget-object v6, Lcom/metamoji/pdf/core/RC4;->INSTANCE:Lcom/metamoji/pdf/core/RC4;

    invoke-virtual {v6, v0, v2}, Lcom/metamoji/pdf/core/RC4;->encrypt([B[B)[B

    move-result-object v0

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_6
    const/16 v1, 0x10

    .line 416
    invoke-static {v0, v3, v1}, Lcom/metamoji/pdf/PDFDocumentKt;->access$checkBytes([B[BI)Z

    move-result v0

    if-nez v0, :cond_7

    .line 417
    sget-object p1, Lcom/metamoji/pdf/PDFDocument$AuthState;->REJECT:Lcom/metamoji/pdf/PDFDocument$AuthState;

    return-object p1

    .line 421
    :cond_7
    invoke-direct {p0, p1, p2}, Lcom/metamoji/pdf/PDFDocument;->setCryptoKey([BLcom/metamoji/pdf/core/PDFObj;)V

    .line 422
    sget-object p1, Lcom/metamoji/pdf/PDFDocument$AuthState;->USER:Lcom/metamoji/pdf/PDFDocument$AuthState;

    return-object p1
.end method

.method private final checkUserPasswordV5([BLcom/metamoji/pdf/core/PDFObj;)Lcom/metamoji/pdf/PDFDocument$AuthState;
    .locals 10

    if-nez p1, :cond_0

    .line 449
    invoke-static {}, Lcom/metamoji/pdf/core/PDFParserKt;->getEMPTY_BYTES()[B

    move-result-object p1

    :cond_0
    move-object v2, p1

    .line 451
    const-string p1, "R"

    invoke-virtual {p2, p1}, Lcom/metamoji/pdf/core/PDFObj;->get(Ljava/lang/String;)Lcom/metamoji/pdf/core/PDFObj;

    move-result-object p1

    invoke-virtual {p1}, Lcom/metamoji/pdf/core/PDFObj;->intVal()I

    move-result v1

    .line 452
    const-string p1, "U"

    invoke-virtual {p2, p1}, Lcom/metamoji/pdf/core/PDFObj;->get(Ljava/lang/String;)Lcom/metamoji/pdf/core/PDFObj;

    move-result-object p1

    invoke-virtual {p1}, Lcom/metamoji/pdf/core/PDFObj;->stringVal()[B

    move-result-object p1

    const/16 v7, 0x30

    invoke-static {p1, v7}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p1

    const-string v0, "copyOf(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v8, 0x20

    const/16 v9, 0x28

    .line 454
    invoke-static {v8, v9}, Lkotlin/ranges/RangesKt;->until(II)Lkotlin/ranges/IntRange;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/collections/ArraysKt;->sliceArray([BLkotlin/ranges/IntRange;)[B

    move-result-object v3

    .line 455
    sget-object v0, Lcom/metamoji/pdf/PDFDocument;->Companion:Lcom/metamoji/pdf/PDFDocument$Companion;

    const/16 v5, 0x8

    const/4 v6, 0x0

    const/4 v4, 0x0

    invoke-static/range {v0 .. v6}, Lcom/metamoji/pdf/PDFDocument$Companion;->hashV5$default(Lcom/metamoji/pdf/PDFDocument$Companion;I[B[B[BILjava/lang/Object;)[B

    move-result-object v3

    .line 456
    invoke-static {v3, p1, v8}, Lcom/metamoji/pdf/PDFDocumentKt;->access$checkBytes([B[BI)Z

    move-result v3

    if-nez v3, :cond_1

    .line 457
    sget-object p1, Lcom/metamoji/pdf/PDFDocument$AuthState;->REJECT:Lcom/metamoji/pdf/PDFDocument$AuthState;

    return-object p1

    .line 460
    :cond_1
    const-string v3, "UE"

    invoke-virtual {p2, v3}, Lcom/metamoji/pdf/core/PDFObj;->get(Ljava/lang/String;)Lcom/metamoji/pdf/core/PDFObj;

    move-result-object v3

    invoke-virtual {v3}, Lcom/metamoji/pdf/core/PDFObj;->stringVal()[B

    move-result-object v8

    .line 461
    invoke-static {v9, v7}, Lkotlin/ranges/RangesKt;->until(II)Lkotlin/ranges/IntRange;

    move-result-object v3

    invoke-static {p1, v3}, Lkotlin/collections/ArraysKt;->sliceArray([BLkotlin/ranges/IntRange;)[B

    move-result-object v3

    const/16 v5, 0x8

    const/4 v6, 0x0

    const/4 v4, 0x0

    .line 462
    invoke-static/range {v0 .. v6}, Lcom/metamoji/pdf/PDFDocument$Companion;->hashV5$default(Lcom/metamoji/pdf/PDFDocument$Companion;I[B[B[BILjava/lang/Object;)[B

    move-result-object p1

    .line 463
    sget-object v0, Lcom/metamoji/pdf/core/AES;->INSTANCE:Lcom/metamoji/pdf/core/AES;

    const/16 v1, 0x10

    new-array v1, v1, [B

    const/4 v2, 0x0

    invoke-virtual {v0, v8, p1, v1, v2}, Lcom/metamoji/pdf/core/AES;->decrypt([B[B[BZ)[B

    move-result-object p1

    .line 464
    invoke-direct {p0, p1, p2}, Lcom/metamoji/pdf/PDFDocument;->setCryptoKey([BLcom/metamoji/pdf/core/PDFObj;)V

    .line 465
    sget-object p1, Lcom/metamoji/pdf/PDFDocument$AuthState;->USER:Lcom/metamoji/pdf/PDFDocument$AuthState;

    return-object p1
.end method

.method private final checkVersionOverride()V
    .locals 5

    .line 167
    invoke-virtual {p0}, Lcom/metamoji/pdf/PDFDocument;->getCatalog()Lcom/metamoji/pdf/core/PDFObj;

    move-result-object v0

    const-string v1, "Version"

    invoke-virtual {v0, v1}, Lcom/metamoji/pdf/core/PDFObj;->get(Ljava/lang/String;)Lcom/metamoji/pdf/core/PDFObj;

    move-result-object v0

    .line 168
    invoke-virtual {v0}, Lcom/metamoji/pdf/core/PDFObj;->getType()Lcom/metamoji/pdf/core/PDFObj$Type;

    move-result-object v1

    sget-object v2, Lcom/metamoji/pdf/core/PDFObj$Type;->NAME:Lcom/metamoji/pdf/core/PDFObj$Type;

    if-ne v1, v2, :cond_1

    .line 169
    invoke-virtual {v0}, Lcom/metamoji/pdf/core/PDFObj;->name()Ljava/lang/String;

    move-result-object v0

    .line 170
    const-string v1, "1."

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 171
    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "substring(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/metamoji/pdf/PDFDocument;->_ver:I

    return-void

    .line 172
    :cond_0
    const-string v1, "2."

    invoke-static {v0, v1, v2, v3, v4}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x7

    .line 173
    iput v0, p0, Lcom/metamoji/pdf/PDFDocument;->_ver:I

    :cond_1
    return-void
.end method

.method private final getXRefPos()J
    .locals 9

    .line 141
    invoke-static {}, Lcom/metamoji/pdf/core/PDFParserKt;->getEMPTY_BYTES()[B

    move-result-object v0

    .line 142
    new-instance v1, Lcom/metamoji/pdf/BackwardReader;

    iget-object v2, p0, Lcom/metamoji/pdf/PDFDocument;->_file:Lcom/metamoji/pdf/IPDFFile;

    invoke-direct {v1, v2}, Lcom/metamoji/pdf/BackwardReader;-><init>(Lcom/metamoji/pdf/IPDFFile;)V

    const/4 v2, 0x0

    move v3, v2

    .line 144
    :goto_0
    invoke-virtual {v1}, Lcom/metamoji/pdf/BackwardReader;->backLine()Lkotlin/Pair;

    move-result-object v4

    invoke-virtual {v4}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Number;

    invoke-virtual {v5}, Ljava/lang/Number;->longValue()J

    move-result-wide v5

    invoke-virtual {v4}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    const-wide/16 v7, 0x0

    cmp-long v7, v5, v7

    if-gez v7, :cond_0

    const-wide/16 v0, -0x1

    return-wide v0

    .line 146
    :cond_0
    iget-object v7, p0, Lcom/metamoji/pdf/PDFDocument;->_file:Lcom/metamoji/pdf/IPDFFile;

    invoke-interface {v7, v5, v6}, Lcom/metamoji/pdf/IPDFFile;->seek(J)V

    const/16 v5, 0x20

    .line 147
    invoke-static {v4, v5}, Lkotlin/ranges/RangesKt;->coerceAtMost(II)I

    move-result v4

    .line 148
    new-array v5, v4, [B

    .line 149
    iget-object v6, p0, Lcom/metamoji/pdf/PDFDocument;->_file:Lcom/metamoji/pdf/IPDFFile;

    invoke-interface {v6, v5, v2, v4}, Lcom/metamoji/pdf/IPDFFile;->read([BII)I

    if-nez v3, :cond_1

    .line 152
    const-string v0, "%%EOF"

    invoke-static {v5, v0}, Lcom/metamoji/pdf/core/PDFParserKt;->checkBytes([BLjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v3, 0x1

    goto :goto_1

    .line 156
    :cond_1
    const-string/jumbo v4, "startxref"

    invoke-static {v5, v4}, Lcom/metamoji/pdf/core/PDFParserKt;->checkBytes([BLjava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 157
    invoke-static {v0}, Lcom/metamoji/pdf/core/PDFParserKt;->byteArrayToString([B)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0

    :cond_2
    :goto_1
    move-object v0, v5

    goto :goto_0
.end method

.method private final initCF(Lcom/metamoji/pdf/core/PDFObj;)V
    .locals 4

    .line 471
    sget-object v0, Lcom/metamoji/pdf/core/CryptFilter;->Companion:Lcom/metamoji/pdf/core/CryptFilter$Companion;

    const-string v1, "None"

    invoke-virtual {v0, v1}, Lcom/metamoji/pdf/core/CryptFilter$Companion;->create(Ljava/lang/String;)Lcom/metamoji/pdf/core/CryptFilter;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 472
    iget-object v1, p0, Lcom/metamoji/pdf/PDFDocument;->_cf:Ljava/util/Map;

    const-string v2, "Identity"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 473
    iput-object v0, p0, Lcom/metamoji/pdf/PDFDocument;->_strF:Lcom/metamoji/pdf/core/CryptFilter;

    .line 474
    iput-object v0, p0, Lcom/metamoji/pdf/PDFDocument;->_stmF:Lcom/metamoji/pdf/core/CryptFilter;

    .line 475
    iput-object v0, p0, Lcom/metamoji/pdf/PDFDocument;->_eff:Lcom/metamoji/pdf/core/CryptFilter;

    .line 477
    const-string v0, "CF"

    invoke-virtual {p1, v0}, Lcom/metamoji/pdf/core/PDFObj;->get(Ljava/lang/String;)Lcom/metamoji/pdf/core/PDFObj;

    move-result-object p1

    invoke-virtual {p1}, Lcom/metamoji/pdf/core/PDFObj;->getDic()Ljava/util/Map;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_1

    .line 478
    :cond_0
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 479
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 480
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 481
    sget-object v3, Lcom/metamoji/pdf/core/CryptFilter;->Companion:Lcom/metamoji/pdf/core/CryptFilter$Companion;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/metamoji/pdf/core/PDFObj;

    invoke-virtual {v3, v0}, Lcom/metamoji/pdf/core/CryptFilter$Companion;->create(Lcom/metamoji/pdf/core/PDFObj;)Lcom/metamoji/pdf/core/CryptFilter;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 483
    iget-object v3, p0, Lcom/metamoji/pdf/PDFDocument;->_cf:Ljava/util/Map;

    invoke-interface {v3, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method private final readHeader()Z
    .locals 13

    const/4 v0, -0x1

    .line 95
    iput v0, p0, Lcom/metamoji/pdf/PDFDocument;->_ver:I

    .line 96
    iget-object v0, p0, Lcom/metamoji/pdf/PDFDocument;->_file:Lcom/metamoji/pdf/IPDFFile;

    const-wide/16 v1, 0x0

    invoke-interface {v0, v1, v2}, Lcom/metamoji/pdf/IPDFFile;->seek(J)V

    .line 104
    invoke-static {}, Lcom/metamoji/pdf/PDFDocumentKt;->access$getHEADER_IN$p()I

    move-result v0

    new-array v1, v0, [B

    .line 105
    invoke-static {}, Lcom/metamoji/pdf/PDFDocumentKt;->access$getHEADER$p()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    const-string v4, "US_ASCII"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v2

    const-string v3, "getBytes(...)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 106
    iget-object v3, p0, Lcom/metamoji/pdf/PDFDocument;->_file:Lcom/metamoji/pdf/IPDFFile;

    const/4 v4, 0x0

    invoke-interface {v3, v1, v4, v0}, Lcom/metamoji/pdf/IPDFFile;->read([BII)I

    move-result v0

    add-int/lit8 v3, v0, -0x8

    move v5, v4

    :goto_0
    const/4 v6, 0x1

    if-ge v5, v3, :cond_6

    .line 108
    invoke-static {v1, v5, v2}, Lcom/metamoji/pdf/PDFDocumentKt;->access$checkBytes([BI[B)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 110
    array-length v7, v2

    add-int/2addr v7, v5

    add-int/lit8 v8, v7, 0x1

    .line 111
    aget-byte v9, v1, v7

    const/16 v10, 0x30

    sub-int/2addr v9, v10

    const/4 v11, 0x2

    if-eq v9, v6, :cond_0

    if-eq v9, v11, :cond_0

    return v4

    :cond_0
    add-int/lit8 v7, v7, 0x2

    .line 115
    aget-byte v6, v1, v8

    const/16 v8, 0x2e

    if-eq v6, v8, :cond_1

    return v4

    :cond_1
    move v6, v4

    :goto_1
    if-ge v7, v0, :cond_3

    add-int/lit8 v8, v7, 0x1

    .line 121
    aget-byte v7, v1, v7

    if-lt v7, v10, :cond_3

    const/16 v12, 0x39

    if-le v7, v12, :cond_2

    goto :goto_2

    :cond_2
    mul-int/lit8 v6, v6, 0xa

    add-int/lit8 v7, v7, -0x30

    add-int/2addr v6, v7

    move v7, v8

    goto :goto_1

    :cond_3
    :goto_2
    if-ne v9, v11, :cond_4

    const/4 v6, 0x7

    .line 126
    :cond_4
    iput v6, p0, Lcom/metamoji/pdf/PDFDocument;->_ver:I

    if-lez v5, :cond_5

    .line 133
    new-instance v6, Lcom/metamoji/pdf/OffsetFile;

    iget-object v7, p0, Lcom/metamoji/pdf/PDFDocument;->_file:Lcom/metamoji/pdf/IPDFFile;

    invoke-direct {v6, v7, v5}, Lcom/metamoji/pdf/OffsetFile;-><init>(Lcom/metamoji/pdf/IPDFFile;I)V

    check-cast v6, Lcom/metamoji/pdf/IPDFFile;

    iput-object v6, p0, Lcom/metamoji/pdf/PDFDocument;->_file:Lcom/metamoji/pdf/IPDFFile;

    :cond_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 136
    :cond_6
    iget v0, p0, Lcom/metamoji/pdf/PDFDocument;->_ver:I

    if-ltz v0, :cond_7

    return v6

    :cond_7
    return v4
.end method

.method private final searchInNameTree(Lcom/metamoji/pdf/core/PDFObj;[B)Lcom/metamoji/pdf/core/PDFObj;
    .locals 5

    .line 552
    const-string v0, "Kids"

    invoke-virtual {p1, v0}, Lcom/metamoji/pdf/core/PDFObj;->contains(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    .line 553
    invoke-virtual {p1, v0}, Lcom/metamoji/pdf/core/PDFObj;->get(Ljava/lang/String;)Lcom/metamoji/pdf/core/PDFObj;

    move-result-object p1

    invoke-virtual {p1}, Lcom/metamoji/pdf/core/PDFObj;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/metamoji/pdf/core/PDFObj;

    .line 554
    const-string v1, "Limits"

    invoke-virtual {v0, v1}, Lcom/metamoji/pdf/core/PDFObj;->get(Ljava/lang/String;)Lcom/metamoji/pdf/core/PDFObj;

    move-result-object v1

    .line 555
    invoke-virtual {v1, v3}, Lcom/metamoji/pdf/core/PDFObj;->get(I)Lcom/metamoji/pdf/core/PDFObj;

    move-result-object v4

    .line 556
    invoke-virtual {v4}, Lcom/metamoji/pdf/core/PDFObj;->stringVal()[B

    move-result-object v4

    invoke-static {p2, v4}, Lcom/metamoji/pdf/PDFDocumentKt;->access$compareNames([B[B)I

    move-result v4

    if-gtz v4, :cond_0

    .line 557
    invoke-virtual {v1, v2}, Lcom/metamoji/pdf/core/PDFObj;->get(I)Lcom/metamoji/pdf/core/PDFObj;

    move-result-object p1

    .line 558
    invoke-virtual {p1}, Lcom/metamoji/pdf/core/PDFObj;->stringVal()[B

    move-result-object p1

    invoke-static {p2, p1}, Lcom/metamoji/pdf/PDFDocumentKt;->access$compareNames([B[B)I

    move-result p1

    if-ltz p1, :cond_6

    .line 559
    invoke-direct {p0, v0, p2}, Lcom/metamoji/pdf/PDFDocument;->searchInNameTree(Lcom/metamoji/pdf/core/PDFObj;[B)Lcom/metamoji/pdf/core/PDFObj;

    move-result-object p1

    return-object p1

    .line 563
    :cond_1
    const-string v0, "Names"

    invoke-virtual {p1, v0}, Lcom/metamoji/pdf/core/PDFObj;->get(Ljava/lang/String;)Lcom/metamoji/pdf/core/PDFObj;

    move-result-object p1

    .line 564
    invoke-virtual {p1}, Lcom/metamoji/pdf/core/PDFObj;->getCount()I

    move-result v0

    sub-int/2addr v0, v3

    .line 565
    invoke-static {v2, v0}, Lkotlin/ranges/RangesKt;->until(II)Lkotlin/ranges/IntRange;

    move-result-object v0

    check-cast v0, Lkotlin/ranges/IntProgression;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lkotlin/ranges/RangesKt;->step(Lkotlin/ranges/IntProgression;I)Lkotlin/ranges/IntProgression;

    move-result-object v0

    invoke-virtual {v0}, Lkotlin/ranges/IntProgression;->getFirst()I

    move-result v1

    invoke-virtual {v0}, Lkotlin/ranges/IntProgression;->getLast()I

    move-result v2

    invoke-virtual {v0}, Lkotlin/ranges/IntProgression;->getStep()I

    move-result v0

    if-lez v0, :cond_2

    if-le v1, v2, :cond_3

    :cond_2
    if-gez v0, :cond_6

    if-gt v2, v1, :cond_6

    .line 566
    :cond_3
    :goto_0
    invoke-virtual {p1, v1}, Lcom/metamoji/pdf/core/PDFObj;->get(I)Lcom/metamoji/pdf/core/PDFObj;

    move-result-object v4

    invoke-virtual {v4}, Lcom/metamoji/pdf/core/PDFObj;->stringVal()[B

    move-result-object v4

    invoke-static {p2, v4}, Lcom/metamoji/pdf/PDFDocumentKt;->access$compareNames([B[B)I

    move-result v4

    if-nez v4, :cond_4

    add-int/2addr v1, v3

    .line 568
    invoke-virtual {p1, v1}, Lcom/metamoji/pdf/core/PDFObj;->get(I)Lcom/metamoji/pdf/core/PDFObj;

    move-result-object p1

    return-object p1

    :cond_4
    if-gez v4, :cond_5

    goto :goto_1

    :cond_5
    if-eq v1, v2, :cond_6

    add-int/2addr v1, v0

    goto :goto_0

    .line 574
    :cond_6
    :goto_1
    sget-object p1, Lcom/metamoji/pdf/core/PDFObj;->Companion:Lcom/metamoji/pdf/core/PDFObj$Companion;

    invoke-virtual {p1}, Lcom/metamoji/pdf/core/PDFObj$Companion;->getNull()Lcom/metamoji/pdf/core/PDFObj;

    move-result-object p1

    return-object p1
.end method

.method private final setCryptoKey([BLcom/metamoji/pdf/core/PDFObj;)V
    .locals 2

    .line 489
    const-string v0, "V"

    invoke-virtual {p2, v0}, Lcom/metamoji/pdf/core/PDFObj;->get(Ljava/lang/String;)Lcom/metamoji/pdf/core/PDFObj;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/metamoji/pdf/core/PDFObj;->intVal(I)I

    move-result v0

    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    .line 491
    sget-object p2, Lcom/metamoji/pdf/core/CryptFilter;->Companion:Lcom/metamoji/pdf/core/CryptFilter$Companion;

    const-string v0, "V2"

    invoke-virtual {p2, v0}, Lcom/metamoji/pdf/core/CryptFilter$Companion;->create(Ljava/lang/String;)Lcom/metamoji/pdf/core/CryptFilter;

    move-result-object p2

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 492
    iput-object p2, p0, Lcom/metamoji/pdf/PDFDocument;->_strF:Lcom/metamoji/pdf/core/CryptFilter;

    .line 493
    iput-object p2, p0, Lcom/metamoji/pdf/PDFDocument;->_stmF:Lcom/metamoji/pdf/core/CryptFilter;

    .line 494
    iput-object p2, p0, Lcom/metamoji/pdf/PDFDocument;->_eff:Lcom/metamoji/pdf/core/CryptFilter;

    goto :goto_1

    .line 496
    :cond_0
    const-string v0, "StrF"

    invoke-virtual {p2, v0}, Lcom/metamoji/pdf/core/PDFObj;->get(Ljava/lang/String;)Lcom/metamoji/pdf/core/PDFObj;

    move-result-object v0

    const-string v1, "Identity"

    invoke-virtual {v0, v1}, Lcom/metamoji/pdf/core/PDFObj;->name(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/metamoji/pdf/PDFDocument;->getCryptFilter(Ljava/lang/String;)Lcom/metamoji/pdf/core/CryptFilter;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/pdf/PDFDocument;->_strF:Lcom/metamoji/pdf/core/CryptFilter;

    .line 497
    const-string v0, "StmF"

    invoke-virtual {p2, v0}, Lcom/metamoji/pdf/core/PDFObj;->get(Ljava/lang/String;)Lcom/metamoji/pdf/core/PDFObj;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/metamoji/pdf/core/PDFObj;->name(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/metamoji/pdf/PDFDocument;->getCryptFilter(Ljava/lang/String;)Lcom/metamoji/pdf/core/CryptFilter;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/pdf/PDFDocument;->_stmF:Lcom/metamoji/pdf/core/CryptFilter;

    .line 498
    const-string v0, "EFF"

    invoke-virtual {p2, v0}, Lcom/metamoji/pdf/core/PDFObj;->contains(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 499
    invoke-virtual {p2, v0}, Lcom/metamoji/pdf/core/PDFObj;->get(Ljava/lang/String;)Lcom/metamoji/pdf/core/PDFObj;

    move-result-object p2

    invoke-virtual {p2}, Lcom/metamoji/pdf/core/PDFObj;->name()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/metamoji/pdf/PDFDocument;->getCryptFilter(Ljava/lang/String;)Lcom/metamoji/pdf/core/CryptFilter;

    move-result-object p2

    goto :goto_0

    .line 501
    :cond_1
    iget-object p2, p0, Lcom/metamoji/pdf/PDFDocument;->_stmF:Lcom/metamoji/pdf/core/CryptFilter;

    .line 498
    :goto_0
    iput-object p2, p0, Lcom/metamoji/pdf/PDFDocument;->_eff:Lcom/metamoji/pdf/core/CryptFilter;

    .line 505
    :goto_1
    iget-object p2, p0, Lcom/metamoji/pdf/PDFDocument;->_strF:Lcom/metamoji/pdf/core/CryptFilter;

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p2, p1}, Lcom/metamoji/pdf/core/CryptFilter;->setKey([B)V

    .line 506
    iget-object p2, p0, Lcom/metamoji/pdf/PDFDocument;->_stmF:Lcom/metamoji/pdf/core/CryptFilter;

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p2, p1}, Lcom/metamoji/pdf/core/CryptFilter;->setKey([B)V

    .line 507
    iget-object p2, p0, Lcom/metamoji/pdf/PDFDocument;->_eff:Lcom/metamoji/pdf/core/CryptFilter;

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p2, p1}, Lcom/metamoji/pdf/core/CryptFilter;->setKey([B)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/metamoji/pdf/PDFDocument;->_file:Lcom/metamoji/pdf/IPDFFile;

    invoke-interface {v0}, Lcom/metamoji/pdf/IPDFFile;->close()V

    return-void
.end method

.method public decrypt([B[B)[B
    .locals 1

    const-string v0, "data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cryptoKey"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 528
    array-length v0, p1

    if-nez v0, :cond_0

    return-object p1

    .line 531
    :cond_0
    iget-object v0, p0, Lcom/metamoji/pdf/PDFDocument;->_strF:Lcom/metamoji/pdf/core/CryptFilter;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0, p1, p2}, Lcom/metamoji/pdf/core/CryptFilter;->decrypt([B[B)[B

    move-result-object p1

    return-object p1
.end method

.method public final getAuthor()Ljava/lang/String;
    .locals 3

    .line 236
    sget-object v0, Lcom/metamoji/pdf/PDFUtil;->INSTANCE:Lcom/metamoji/pdf/PDFUtil;

    invoke-virtual {p0}, Lcom/metamoji/pdf/PDFDocument;->getInfo()Lcom/metamoji/pdf/core/PDFObj;

    move-result-object v1

    const-string v2, "Author"

    invoke-virtual {v1, v2}, Lcom/metamoji/pdf/core/PDFObj;->get(Ljava/lang/String;)Lcom/metamoji/pdf/core/PDFObj;

    move-result-object v1

    invoke-static {}, Lcom/metamoji/pdf/PDFDocumentKt;->access$getEmptyString$p()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/metamoji/pdf/core/PDFObj;->stringVal([B)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/metamoji/pdf/PDFUtil;->getDisplayString([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getByName(Ljava/lang/String;)Lcom/metamoji/pdf/core/PDFObj;
    .locals 2

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 547
    invoke-virtual {p0}, Lcom/metamoji/pdf/PDFDocument;->getCatalog()Lcom/metamoji/pdf/core/PDFObj;

    move-result-object v0

    const-string v1, "Dests"

    invoke-virtual {v0, v1}, Lcom/metamoji/pdf/core/PDFObj;->get(Ljava/lang/String;)Lcom/metamoji/pdf/core/PDFObj;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/metamoji/pdf/core/PDFObj;->get(Ljava/lang/String;)Lcom/metamoji/pdf/core/PDFObj;

    move-result-object p1

    return-object p1
.end method

.method public final getByName([B)Lcom/metamoji/pdf/core/PDFObj;
    .locals 2

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 540
    invoke-virtual {p0}, Lcom/metamoji/pdf/PDFDocument;->getCatalog()Lcom/metamoji/pdf/core/PDFObj;

    move-result-object v0

    const-string v1, "Names"

    invoke-virtual {v0, v1}, Lcom/metamoji/pdf/core/PDFObj;->get(Ljava/lang/String;)Lcom/metamoji/pdf/core/PDFObj;

    move-result-object v0

    const-string v1, "Dests"

    invoke-virtual {v0, v1}, Lcom/metamoji/pdf/core/PDFObj;->get(Ljava/lang/String;)Lcom/metamoji/pdf/core/PDFObj;

    move-result-object v0

    .line 541
    invoke-virtual {v0}, Lcom/metamoji/pdf/core/PDFObj;->isNull()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object p1, Lcom/metamoji/pdf/core/PDFObj;->Companion:Lcom/metamoji/pdf/core/PDFObj$Companion;

    invoke-virtual {p1}, Lcom/metamoji/pdf/core/PDFObj$Companion;->getNull()Lcom/metamoji/pdf/core/PDFObj;

    move-result-object p1

    return-object p1

    .line 542
    :cond_0
    invoke-direct {p0, v0, p1}, Lcom/metamoji/pdf/PDFDocument;->searchInNameTree(Lcom/metamoji/pdf/core/PDFObj;[B)Lcom/metamoji/pdf/core/PDFObj;

    move-result-object p1

    return-object p1
.end method

.method public final getCatalog()Lcom/metamoji/pdf/core/PDFObj;
    .locals 2

    .line 188
    iget-object v0, p0, Lcom/metamoji/pdf/PDFDocument;->_trailer:Lcom/metamoji/pdf/core/PDFObj;

    const-string v1, "Root"

    invoke-virtual {v0, v1}, Lcom/metamoji/pdf/core/PDFObj;->get(Ljava/lang/String;)Lcom/metamoji/pdf/core/PDFObj;

    move-result-object v0

    return-object v0
.end method

.method public getCryptFilter(Ljava/lang/String;)Lcom/metamoji/pdf/core/CryptFilter;
    .locals 1

    const-string v0, "cf"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 511
    iget-object v0, p0, Lcom/metamoji/pdf/PDFDocument;->_cf:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/metamoji/pdf/core/CryptFilter;

    if-eqz p1, :cond_0

    return-object p1

    :cond_0
    new-instance p1, Lcom/metamoji/pdf/core/PDFException;

    const-string/jumbo v0, "undefined crypt filter"

    invoke-direct {p1, v0}, Lcom/metamoji/pdf/core/PDFException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getCryptoKey(IIZ)[B
    .locals 1

    .line 519
    invoke-virtual {p0}, Lcom/metamoji/pdf/PDFDocument;->isEncrypted()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    if-eqz p3, :cond_3

    .line 521
    iget-object p3, p0, Lcom/metamoji/pdf/PDFDocument;->_stmF:Lcom/metamoji/pdf/core/CryptFilter;

    if-eqz p3, :cond_2

    invoke-virtual {p3, p1, p2}, Lcom/metamoji/pdf/core/CryptFilter;->getCryptoKey(II)[B

    move-result-object p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    return-object p1

    :cond_2
    :goto_0
    invoke-static {}, Lcom/metamoji/pdf/core/PDFParserKt;->getEMPTY_BYTES()[B

    move-result-object p1

    return-object p1

    .line 523
    :cond_3
    iget-object p3, p0, Lcom/metamoji/pdf/PDFDocument;->_strF:Lcom/metamoji/pdf/core/CryptFilter;

    if-eqz p3, :cond_5

    invoke-virtual {p3, p1, p2}, Lcom/metamoji/pdf/core/CryptFilter;->getCryptoKey(II)[B

    move-result-object p1

    if-nez p1, :cond_4

    goto :goto_1

    :cond_4
    return-object p1

    :cond_5
    :goto_1
    invoke-static {}, Lcom/metamoji/pdf/core/PDFParserKt;->getEMPTY_BYTES()[B

    move-result-object p1

    return-object p1
.end method

.method public final getInfo()Lcom/metamoji/pdf/core/PDFObj;
    .locals 2

    .line 190
    iget-object v0, p0, Lcom/metamoji/pdf/PDFDocument;->_trailer:Lcom/metamoji/pdf/core/PDFObj;

    const-string v1, "Info"

    invoke-virtual {v0, v1}, Lcom/metamoji/pdf/core/PDFObj;->get(Ljava/lang/String;)Lcom/metamoji/pdf/core/PDFObj;

    move-result-object v0

    return-object v0
.end method

.method public getObject(II)Lcom/metamoji/pdf/core/PDFObj;
    .locals 2

    .line 179
    iget-object v0, p0, Lcom/metamoji/pdf/PDFDocument;->_xref:Lcom/metamoji/pdf/core/PDFXRef;

    iget-object v1, p0, Lcom/metamoji/pdf/PDFDocument;->_file:Lcom/metamoji/pdf/IPDFFile;

    invoke-virtual {v0, v1, p1, p2}, Lcom/metamoji/pdf/core/PDFXRef;->getObj(Lcom/metamoji/pdf/IPDFFile;II)Lcom/metamoji/pdf/core/PDFObj;

    move-result-object p1

    return-object p1
.end method

.method public final getPage(I)Lcom/metamoji/pdf/PDFPage;
    .locals 1

    .line 196
    new-instance v0, Lcom/metamoji/pdf/PDFPage;

    invoke-direct {v0, p0, p1}, Lcom/metamoji/pdf/PDFPage;-><init>(Lcom/metamoji/pdf/PDFDocument;I)V

    return-object v0
.end method

.method public final getPageCount()I
    .locals 2

    .line 192
    invoke-virtual {p0}, Lcom/metamoji/pdf/PDFDocument;->getCatalog()Lcom/metamoji/pdf/core/PDFObj;

    move-result-object v0

    const-string v1, "Pages"

    invoke-virtual {v0, v1}, Lcom/metamoji/pdf/core/PDFObj;->get(Ljava/lang/String;)Lcom/metamoji/pdf/core/PDFObj;

    move-result-object v0

    const-string v1, "Count"

    invoke-virtual {v0, v1}, Lcom/metamoji/pdf/core/PDFObj;->get(Ljava/lang/String;)Lcom/metamoji/pdf/core/PDFObj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/pdf/core/PDFObj;->intVal()I

    move-result v0

    return v0
.end method

.method public final getPageObj(I)Lcom/metamoji/pdf/core/PDFObj;
    .locals 2

    .line 199
    invoke-virtual {p0}, Lcom/metamoji/pdf/PDFDocument;->getCatalog()Lcom/metamoji/pdf/core/PDFObj;

    move-result-object v0

    const-string v1, "Pages"

    invoke-virtual {v0, v1}, Lcom/metamoji/pdf/core/PDFObj;->get(Ljava/lang/String;)Lcom/metamoji/pdf/core/PDFObj;

    move-result-object v0

    .line 200
    new-instance v1, Lcom/metamoji/pdf/PDFDocument$RefPageIndex;

    invoke-direct {v1, p1}, Lcom/metamoji/pdf/PDFDocument$RefPageIndex;-><init>(I)V

    .line 201
    invoke-direct {p0, v0, v1}, Lcom/metamoji/pdf/PDFDocument;->_getPageObj(Lcom/metamoji/pdf/core/PDFObj;Lcom/metamoji/pdf/PDFDocument$RefPageIndex;)Lcom/metamoji/pdf/core/PDFObj;

    move-result-object p1

    if-eqz p1, :cond_0

    return-object p1

    :cond_0
    new-instance p1, Lcom/metamoji/pdf/core/PDFException;

    const-string v0, "page index is out of range"

    invoke-direct {p1, v0}, Lcom/metamoji/pdf/core/PDFException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getStmF()Lcom/metamoji/pdf/core/CryptFilter;
    .locals 2

    .line 515
    iget-object v0, p0, Lcom/metamoji/pdf/PDFDocument;->_stmF:Lcom/metamoji/pdf/core/CryptFilter;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Lcom/metamoji/pdf/core/PDFException;

    const-string/jumbo v1, "stream is encrypted"

    invoke-direct {v0, v1}, Lcom/metamoji/pdf/core/PDFException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final getTitle()Ljava/lang/String;
    .locals 3

    .line 234
    sget-object v0, Lcom/metamoji/pdf/PDFUtil;->INSTANCE:Lcom/metamoji/pdf/PDFUtil;

    invoke-virtual {p0}, Lcom/metamoji/pdf/PDFDocument;->getInfo()Lcom/metamoji/pdf/core/PDFObj;

    move-result-object v1

    const-string v2, "Title"

    invoke-virtual {v1, v2}, Lcom/metamoji/pdf/core/PDFObj;->get(Ljava/lang/String;)Lcom/metamoji/pdf/core/PDFObj;

    move-result-object v1

    invoke-static {}, Lcom/metamoji/pdf/PDFDocumentKt;->access$getEmptyString$p()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/metamoji/pdf/core/PDFObj;->stringVal([B)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/metamoji/pdf/PDFUtil;->getDisplayString([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getTrailer()Lcom/metamoji/pdf/core/PDFObj;
    .locals 1

    .line 186
    iget-object v0, p0, Lcom/metamoji/pdf/PDFDocument;->_trailer:Lcom/metamoji/pdf/core/PDFObj;

    return-object v0
.end method

.method public final getVersion()I
    .locals 1

    .line 184
    iget v0, p0, Lcom/metamoji/pdf/PDFDocument;->_ver:I

    return v0
.end method

.method public final isEncrypted()Z
    .locals 2

    .line 255
    iget-object v0, p0, Lcom/metamoji/pdf/PDFDocument;->_auth:Lcom/metamoji/pdf/PDFDocument$AuthState;

    sget-object v1, Lcom/metamoji/pdf/PDFDocument$AuthState;->NONE:Lcom/metamoji/pdf/PDFDocument$AuthState;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final isLocked()Z
    .locals 2

    .line 256
    iget-object v0, p0, Lcom/metamoji/pdf/PDFDocument;->_auth:Lcom/metamoji/pdf/PDFDocument$AuthState;

    sget-object v1, Lcom/metamoji/pdf/PDFDocument$AuthState;->NONE:Lcom/metamoji/pdf/PDFDocument$AuthState;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/metamoji/pdf/PDFDocument;->_auth:Lcom/metamoji/pdf/PDFDocument$AuthState;

    sget-object v1, Lcom/metamoji/pdf/PDFDocument$AuthState;->USER:Lcom/metamoji/pdf/PDFDocument$AuthState;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/metamoji/pdf/PDFDocument;->_auth:Lcom/metamoji/pdf/PDFDocument$AuthState;

    sget-object v1, Lcom/metamoji/pdf/PDFDocument$AuthState;->OWNER:Lcom/metamoji/pdf/PDFDocument$AuthState;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final load()V
    .locals 8

    .line 73
    invoke-direct {p0}, Lcom/metamoji/pdf/PDFDocument;->readHeader()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 77
    invoke-direct {p0}, Lcom/metamoji/pdf/PDFDocument;->getXRefPos()J

    move-result-wide v3

    const-wide/16 v0, 0x0

    cmp-long v0, v3, v0

    if-ltz v0, :cond_0

    .line 81
    :try_start_0
    iget-object v1, p0, Lcom/metamoji/pdf/PDFDocument;->_xref:Lcom/metamoji/pdf/core/PDFXRef;

    iget-object v2, p0, Lcom/metamoji/pdf/PDFDocument;->_file:Lcom/metamoji/pdf/IPDFFile;

    const/4 v6, 0x4

    const/4 v7, 0x0

    const/4 v5, 0x0

    invoke-static/range {v1 .. v7}, Lcom/metamoji/pdf/core/PDFXRef;->read$default(Lcom/metamoji/pdf/core/PDFXRef;Lcom/metamoji/pdf/IPDFFile;JZILjava/lang/Object;)Lcom/metamoji/pdf/core/PDFObj;

    move-result-object v0
    :try_end_0
    .catch Lcom/metamoji/pdf/core/PDFException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 84
    :catch_0
    iget-object v0, p0, Lcom/metamoji/pdf/PDFDocument;->_xref:Lcom/metamoji/pdf/core/PDFXRef;

    iget-object v1, p0, Lcom/metamoji/pdf/PDFDocument;->_file:Lcom/metamoji/pdf/IPDFFile;

    invoke-virtual {v0, v1}, Lcom/metamoji/pdf/core/PDFXRef;->readSequential(Lcom/metamoji/pdf/IPDFFile;)Lcom/metamoji/pdf/core/PDFObj;

    move-result-object v0

    .line 80
    :goto_0
    iput-object v0, p0, Lcom/metamoji/pdf/PDFDocument;->_trailer:Lcom/metamoji/pdf/core/PDFObj;

    .line 87
    invoke-direct {p0}, Lcom/metamoji/pdf/PDFDocument;->checkVersionOverride()V

    .line 89
    sget-object v0, Lcom/metamoji/pdf/PDFDocument$AuthState;->UNCHECKED:Lcom/metamoji/pdf/PDFDocument$AuthState;

    iput-object v0, p0, Lcom/metamoji/pdf/PDFDocument;->_auth:Lcom/metamoji/pdf/PDFDocument$AuthState;

    const/4 v0, 0x0

    .line 91
    invoke-virtual {p0, v0}, Lcom/metamoji/pdf/PDFDocument;->unlock(Ljava/lang/String;)Lcom/metamoji/pdf/PDFDocument$AuthState;

    return-void

    .line 78
    :cond_0
    new-instance v0, Lcom/metamoji/pdf/core/PDFException;

    const-string v1, "cannot find xref"

    invoke-direct {v0, v1}, Lcom/metamoji/pdf/core/PDFException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 74
    :cond_1
    new-instance v0, Lcom/metamoji/pdf/core/PDFException;

    const-string v1, "not a pdf file"

    invoke-direct {v0, v1}, Lcom/metamoji/pdf/core/PDFException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public openStream(JJ)Lcom/metamoji/pdf/core/PDFInputStream;
    .locals 6

    .line 182
    new-instance v0, Lcom/metamoji/pdf/RawReader;

    iget-object v1, p0, Lcom/metamoji/pdf/PDFDocument;->_file:Lcom/metamoji/pdf/IPDFFile;

    move-wide v2, p1

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/metamoji/pdf/RawReader;-><init>(Lcom/metamoji/pdf/IPDFFile;JJ)V

    check-cast v0, Lcom/metamoji/pdf/core/PDFInputStream;

    return-object v0
.end method

.method public final unlock(Ljava/lang/String;)Lcom/metamoji/pdf/PDFDocument$AuthState;
    .locals 2

    .line 259
    iget-object v0, p0, Lcom/metamoji/pdf/PDFDocument;->_auth:Lcom/metamoji/pdf/PDFDocument$AuthState;

    sget-object v1, Lcom/metamoji/pdf/PDFDocument$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Lcom/metamoji/pdf/PDFDocument$AuthState;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    const/4 v1, 0x2

    if-eq v0, v1, :cond_4

    const/4 v1, 0x3

    if-eq v0, v1, :cond_4

    .line 264
    sget-object v0, Lcom/metamoji/pdf/PDFDocument$AuthState;->NONE:Lcom/metamoji/pdf/PDFDocument$AuthState;

    iput-object v0, p0, Lcom/metamoji/pdf/PDFDocument;->_auth:Lcom/metamoji/pdf/PDFDocument$AuthState;

    .line 265
    iget-object v0, p0, Lcom/metamoji/pdf/PDFDocument;->_trailer:Lcom/metamoji/pdf/core/PDFObj;

    const-string v1, "Encrypt"

    invoke-virtual {v0, v1}, Lcom/metamoji/pdf/core/PDFObj;->get(Ljava/lang/String;)Lcom/metamoji/pdf/core/PDFObj;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/metamoji/pdf/PDFDocument;->initCF(Lcom/metamoji/pdf/core/PDFObj;)V

    .line 268
    :try_start_0
    sget-object v0, Lcom/metamoji/pdf/PDFDocument;->Companion:Lcom/metamoji/pdf/PDFDocument$Companion;

    invoke-virtual {v0, p1}, Lcom/metamoji/pdf/PDFDocument$Companion;->normalizePassword(Ljava/lang/String;)[B

    move-result-object p1

    .line 269
    invoke-direct {p0, p1}, Lcom/metamoji/pdf/PDFDocument;->checkOwnerPassword([B)Lcom/metamoji/pdf/PDFDocument$AuthState;

    move-result-object v0

    .line 270
    sget-object v1, Lcom/metamoji/pdf/PDFDocument$AuthState;->REJECT:Lcom/metamoji/pdf/PDFDocument$AuthState;

    if-eq v0, v1, :cond_0

    .line 271
    iput-object v0, p0, Lcom/metamoji/pdf/PDFDocument;->_auth:Lcom/metamoji/pdf/PDFDocument$AuthState;

    goto :goto_0

    .line 273
    :cond_0
    iget-object v0, p0, Lcom/metamoji/pdf/PDFDocument;->_auth:Lcom/metamoji/pdf/PDFDocument$AuthState;

    sget-object v1, Lcom/metamoji/pdf/PDFDocument$AuthState;->USER:Lcom/metamoji/pdf/PDFDocument$AuthState;

    if-eq v0, v1, :cond_1

    .line 274
    invoke-direct {p0, p1}, Lcom/metamoji/pdf/PDFDocument;->checkUserPassword([B)Lcom/metamoji/pdf/PDFDocument$AuthState;

    move-result-object p1

    iput-object p1, p0, Lcom/metamoji/pdf/PDFDocument;->_auth:Lcom/metamoji/pdf/PDFDocument$AuthState;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 282
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/metamoji/pdf/PDFDocument;->_auth:Lcom/metamoji/pdf/PDFDocument$AuthState;

    sget-object v0, Lcom/metamoji/pdf/PDFDocument$AuthState;->UNSUPPORTED:Lcom/metamoji/pdf/PDFDocument$AuthState;

    if-eq p1, v0, :cond_2

    iget-object p1, p0, Lcom/metamoji/pdf/PDFDocument;->_auth:Lcom/metamoji/pdf/PDFDocument$AuthState;

    sget-object v0, Lcom/metamoji/pdf/PDFDocument$AuthState;->REJECT:Lcom/metamoji/pdf/PDFDocument$AuthState;

    if-ne p1, v0, :cond_3

    :cond_2
    const/4 p1, 0x0

    .line 283
    iput-object p1, p0, Lcom/metamoji/pdf/PDFDocument;->_strF:Lcom/metamoji/pdf/core/CryptFilter;

    .line 284
    iput-object p1, p0, Lcom/metamoji/pdf/PDFDocument;->_stmF:Lcom/metamoji/pdf/core/CryptFilter;

    .line 285
    iput-object p1, p0, Lcom/metamoji/pdf/PDFDocument;->_eff:Lcom/metamoji/pdf/core/CryptFilter;

    .line 288
    :cond_3
    iget-object p1, p0, Lcom/metamoji/pdf/PDFDocument;->_auth:Lcom/metamoji/pdf/PDFDocument$AuthState;

    return-object p1

    :catch_0
    move-exception p1

    .line 278
    sget-object v0, Lcom/metamoji/pdf/PDFDocument$AuthState;->UNSUPPORTED:Lcom/metamoji/pdf/PDFDocument$AuthState;

    iput-object v0, p0, Lcom/metamoji/pdf/PDFDocument;->_auth:Lcom/metamoji/pdf/PDFDocument$AuthState;

    .line 279
    throw p1

    .line 260
    :cond_4
    iget-object p1, p0, Lcom/metamoji/pdf/PDFDocument;->_auth:Lcom/metamoji/pdf/PDFDocument$AuthState;

    return-object p1
.end method
