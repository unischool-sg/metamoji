.class public final Lcom/metamoji/pdf/content/ResourceCache;
.super Ljava/lang/Object;
.source "ResourceCache.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010%\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000e\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001B5\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0014\u0008\u0002\u0010\u0007\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00000\u0008\u00a2\u0006\u0004\u0008\t\u0010\nJ\u000e\u0010\u0014\u001a\u00020\u00052\u0006\u0010\u0015\u001a\u00020\u0016J\u000e\u0010\u0017\u001a\u00020\u00052\u0006\u0010\u0015\u001a\u00020\u0016J\u000e\u0010\u0018\u001a\u00020\u00052\u0006\u0010\u0015\u001a\u00020\u0016J\u0010\u0010\u0019\u001a\u0004\u0018\u00010\u00002\u0006\u0010\u0015\u001a\u00020\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u0007\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00000\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0017\u0010\u000f\u001a\u0008\u0012\u0004\u0012\u00020\u00110\u00108F\u00a2\u0006\u0006\u001a\u0004\u0008\u0012\u0010\u0013\u00a8\u0006\u001a"
    }
    d2 = {
        "Lcom/metamoji/pdf/content/ResourceCache;",
        "",
        "_doc",
        "Lcom/metamoji/pdf/core/IPDFDocument;",
        "_contents",
        "Lcom/metamoji/pdf/core/PDFObj;",
        "resources",
        "_cache",
        "",
        "<init>",
        "(Lcom/metamoji/pdf/core/IPDFDocument;Lcom/metamoji/pdf/core/PDFObj;Lcom/metamoji/pdf/core/PDFObj;Ljava/util/Map;)V",
        "_xobj",
        "_xgs",
        "_font",
        "_properties",
        "instructions",
        "Lkotlin/sequences/Sequence;",
        "Lcom/metamoji/pdf/content/Instruction;",
        "getInstructions",
        "()Lkotlin/sequences/Sequence;",
        "getGState",
        "name",
        "",
        "getXObj",
        "getProperty",
        "getForm",
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


# instance fields
.field private final _cache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/metamoji/pdf/core/PDFObj;",
            "Lcom/metamoji/pdf/content/ResourceCache;",
            ">;"
        }
    .end annotation
.end field

.field private final _contents:Lcom/metamoji/pdf/core/PDFObj;

.field private final _doc:Lcom/metamoji/pdf/core/IPDFDocument;

.field private final _font:Lcom/metamoji/pdf/core/PDFObj;

.field private final _properties:Lcom/metamoji/pdf/core/PDFObj;

.field private final _xgs:Lcom/metamoji/pdf/core/PDFObj;

.field private final _xobj:Lcom/metamoji/pdf/core/PDFObj;


# direct methods
.method public constructor <init>(Lcom/metamoji/pdf/core/IPDFDocument;Lcom/metamoji/pdf/core/PDFObj;Lcom/metamoji/pdf/core/PDFObj;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/pdf/core/IPDFDocument;",
            "Lcom/metamoji/pdf/core/PDFObj;",
            "Lcom/metamoji/pdf/core/PDFObj;",
            "Ljava/util/Map<",
            "Lcom/metamoji/pdf/core/PDFObj;",
            "Lcom/metamoji/pdf/content/ResourceCache;",
            ">;)V"
        }
    .end annotation

    const-string v0, "_doc"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "_contents"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "resources"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "_cache"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput-object p1, p0, Lcom/metamoji/pdf/content/ResourceCache;->_doc:Lcom/metamoji/pdf/core/IPDFDocument;

    .line 8
    iput-object p2, p0, Lcom/metamoji/pdf/content/ResourceCache;->_contents:Lcom/metamoji/pdf/core/PDFObj;

    .line 10
    iput-object p4, p0, Lcom/metamoji/pdf/content/ResourceCache;->_cache:Ljava/util/Map;

    .line 12
    const-string p1, "XObject"

    invoke-virtual {p3, p1}, Lcom/metamoji/pdf/core/PDFObj;->get(Ljava/lang/String;)Lcom/metamoji/pdf/core/PDFObj;

    move-result-object p1

    iput-object p1, p0, Lcom/metamoji/pdf/content/ResourceCache;->_xobj:Lcom/metamoji/pdf/core/PDFObj;

    .line 13
    const-string p1, "ExtGState"

    invoke-virtual {p3, p1}, Lcom/metamoji/pdf/core/PDFObj;->get(Ljava/lang/String;)Lcom/metamoji/pdf/core/PDFObj;

    move-result-object p1

    iput-object p1, p0, Lcom/metamoji/pdf/content/ResourceCache;->_xgs:Lcom/metamoji/pdf/core/PDFObj;

    .line 14
    const-string p1, "Font"

    invoke-virtual {p3, p1}, Lcom/metamoji/pdf/core/PDFObj;->get(Ljava/lang/String;)Lcom/metamoji/pdf/core/PDFObj;

    move-result-object p1

    iput-object p1, p0, Lcom/metamoji/pdf/content/ResourceCache;->_font:Lcom/metamoji/pdf/core/PDFObj;

    .line 15
    const-string p1, "Properties"

    invoke-virtual {p3, p1}, Lcom/metamoji/pdf/core/PDFObj;->get(Ljava/lang/String;)Lcom/metamoji/pdf/core/PDFObj;

    move-result-object p1

    iput-object p1, p0, Lcom/metamoji/pdf/content/ResourceCache;->_properties:Lcom/metamoji/pdf/core/PDFObj;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/metamoji/pdf/core/IPDFDocument;Lcom/metamoji/pdf/core/PDFObj;Lcom/metamoji/pdf/core/PDFObj;Ljava/util/Map;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_0

    .line 10
    new-instance p4, Ljava/util/LinkedHashMap;

    invoke-direct {p4}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast p4, Ljava/util/Map;

    .line 6
    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/metamoji/pdf/content/ResourceCache;-><init>(Lcom/metamoji/pdf/core/IPDFDocument;Lcom/metamoji/pdf/core/PDFObj;Lcom/metamoji/pdf/core/PDFObj;Ljava/util/Map;)V

    return-void
.end method

.method public static final synthetic access$get_contents$p(Lcom/metamoji/pdf/content/ResourceCache;)Lcom/metamoji/pdf/core/PDFObj;
    .locals 0

    .line 6
    iget-object p0, p0, Lcom/metamoji/pdf/content/ResourceCache;->_contents:Lcom/metamoji/pdf/core/PDFObj;

    return-object p0
.end method

.method public static final synthetic access$get_doc$p(Lcom/metamoji/pdf/content/ResourceCache;)Lcom/metamoji/pdf/core/IPDFDocument;
    .locals 0

    .line 6
    iget-object p0, p0, Lcom/metamoji/pdf/content/ResourceCache;->_doc:Lcom/metamoji/pdf/core/IPDFDocument;

    return-object p0
.end method

.method public static final synthetic access$get_font$p(Lcom/metamoji/pdf/content/ResourceCache;)Lcom/metamoji/pdf/core/PDFObj;
    .locals 0

    .line 6
    iget-object p0, p0, Lcom/metamoji/pdf/content/ResourceCache;->_font:Lcom/metamoji/pdf/core/PDFObj;

    return-object p0
.end method

.method public static final synthetic access$get_xgs$p(Lcom/metamoji/pdf/content/ResourceCache;)Lcom/metamoji/pdf/core/PDFObj;
    .locals 0

    .line 6
    iget-object p0, p0, Lcom/metamoji/pdf/content/ResourceCache;->_xgs:Lcom/metamoji/pdf/core/PDFObj;

    return-object p0
.end method


# virtual methods
.method public final getForm(Ljava/lang/String;)Lcom/metamoji/pdf/content/ResourceCache;
    .locals 5

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 63
    iget-object v0, p0, Lcom/metamoji/pdf/content/ResourceCache;->_xobj:Lcom/metamoji/pdf/core/PDFObj;

    invoke-virtual {v0}, Lcom/metamoji/pdf/core/PDFObj;->isNull()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 65
    :cond_0
    iget-object v0, p0, Lcom/metamoji/pdf/content/ResourceCache;->_xobj:Lcom/metamoji/pdf/core/PDFObj;

    invoke-virtual {v0, p1}, Lcom/metamoji/pdf/core/PDFObj;->get(Ljava/lang/String;)Lcom/metamoji/pdf/core/PDFObj;

    move-result-object p1

    .line 66
    invoke-virtual {p1}, Lcom/metamoji/pdf/core/PDFObj;->isNull()Z

    move-result v0

    if-eqz v0, :cond_1

    return-object v1

    .line 68
    :cond_1
    iget-object v0, p0, Lcom/metamoji/pdf/content/ResourceCache;->_cache:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 69
    iget-object v0, p0, Lcom/metamoji/pdf/content/ResourceCache;->_cache:Ljava/util/Map;

    new-instance v1, Lcom/metamoji/pdf/content/ResourceCache;

    iget-object v2, p0, Lcom/metamoji/pdf/content/ResourceCache;->_doc:Lcom/metamoji/pdf/core/IPDFDocument;

    const-string v3, "Resources"

    invoke-virtual {p1, v3}, Lcom/metamoji/pdf/core/PDFObj;->get(Ljava/lang/String;)Lcom/metamoji/pdf/core/PDFObj;

    move-result-object v3

    iget-object v4, p0, Lcom/metamoji/pdf/content/ResourceCache;->_cache:Ljava/util/Map;

    invoke-direct {v1, v2, p1, v3, v4}, Lcom/metamoji/pdf/content/ResourceCache;-><init>(Lcom/metamoji/pdf/core/IPDFDocument;Lcom/metamoji/pdf/core/PDFObj;Lcom/metamoji/pdf/core/PDFObj;Ljava/util/Map;)V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    :cond_2
    iget-object v0, p0, Lcom/metamoji/pdf/content/ResourceCache;->_cache:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/metamoji/pdf/content/ResourceCache;

    return-object p1
.end method

.method public final getGState(Ljava/lang/String;)Lcom/metamoji/pdf/core/PDFObj;
    .locals 1

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 58
    iget-object v0, p0, Lcom/metamoji/pdf/content/ResourceCache;->_xgs:Lcom/metamoji/pdf/core/PDFObj;

    invoke-virtual {v0, p1}, Lcom/metamoji/pdf/core/PDFObj;->get(Ljava/lang/String;)Lcom/metamoji/pdf/core/PDFObj;

    move-result-object p1

    return-object p1
.end method

.method public final getInstructions()Lkotlin/sequences/Sequence;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/sequences/Sequence<",
            "Lcom/metamoji/pdf/content/Instruction;",
            ">;"
        }
    .end annotation

    .line 17
    new-instance v0, Lcom/metamoji/pdf/content/ResourceCache$instructions$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/metamoji/pdf/content/ResourceCache$instructions$1;-><init>(Lcom/metamoji/pdf/content/ResourceCache;Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/jvm/functions/Function2;

    invoke-static {v0}, Lkotlin/sequences/SequencesKt;->sequence(Lkotlin/jvm/functions/Function2;)Lkotlin/sequences/Sequence;

    move-result-object v0

    return-object v0
.end method

.method public final getProperty(Ljava/lang/String;)Lcom/metamoji/pdf/core/PDFObj;
    .locals 1

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 60
    iget-object v0, p0, Lcom/metamoji/pdf/content/ResourceCache;->_properties:Lcom/metamoji/pdf/core/PDFObj;

    invoke-virtual {v0, p1}, Lcom/metamoji/pdf/core/PDFObj;->get(Ljava/lang/String;)Lcom/metamoji/pdf/core/PDFObj;

    move-result-object p1

    return-object p1
.end method

.method public final getXObj(Ljava/lang/String;)Lcom/metamoji/pdf/core/PDFObj;
    .locals 1

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 59
    iget-object v0, p0, Lcom/metamoji/pdf/content/ResourceCache;->_xobj:Lcom/metamoji/pdf/core/PDFObj;

    invoke-virtual {v0, p1}, Lcom/metamoji/pdf/core/PDFObj;->get(Ljava/lang/String;)Lcom/metamoji/pdf/core/PDFObj;

    move-result-object p1

    return-object p1
.end method
