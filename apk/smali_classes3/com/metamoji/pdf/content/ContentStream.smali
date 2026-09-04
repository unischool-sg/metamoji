.class public final Lcom/metamoji/pdf/content/ContentStream;
.super Lcom/metamoji/pdf/core/PDFInputStream;
.source "ContentStream.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/pdf/content/ContentStream$WhenMappings;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010 \n\u0000\n\u0002\u0010(\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0012\n\u0002\u0008\u0003\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u0008\u0010\u000b\u001a\u00020\u000cH\u0016J \u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u000e2\u0006\u0010\u0012\u001a\u00020\u000eH\u0016R\u0014\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00010\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\u00010\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\n\u001a\u0004\u0018\u00010\u0001X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0013"
    }
    d2 = {
        "Lcom/metamoji/pdf/content/ContentStream;",
        "Lcom/metamoji/pdf/core/PDFInputStream;",
        "contents",
        "Lcom/metamoji/pdf/core/PDFObj;",
        "<init>",
        "(Lcom/metamoji/pdf/core/PDFObj;)V",
        "_streams",
        "",
        "_enum",
        "",
        "_current",
        "close",
        "",
        "_read",
        "",
        "buffer",
        "",
        "offset",
        "maxRead",
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
.field private _current:Lcom/metamoji/pdf/core/PDFInputStream;

.field private final _enum:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "Lcom/metamoji/pdf/core/PDFInputStream;",
            ">;"
        }
    .end annotation
.end field

.field private final _streams:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/metamoji/pdf/core/PDFInputStream;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/metamoji/pdf/core/PDFObj;)V
    .locals 6

    const-string v0, "contents"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-direct {p0}, Lcom/metamoji/pdf/core/PDFInputStream;-><init>()V

    .line 11
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    .line 12
    invoke-virtual {p1}, Lcom/metamoji/pdf/core/PDFObj;->getType()Lcom/metamoji/pdf/core/PDFObj$Type;

    move-result-object v1

    sget-object v2, Lcom/metamoji/pdf/content/ContentStream$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v1}, Lcom/metamoji/pdf/core/PDFObj$Type;->ordinal()I

    move-result v1

    aget v1, v2, v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eq v1, v4, :cond_2

    const/4 v5, 0x2

    if-eq v1, v5, :cond_1

    const/4 p1, 0x3

    if-ne v1, p1, :cond_0

    goto :goto_1

    .line 20
    :cond_0
    new-instance p1, Lcom/metamoji/pdf/core/PDFException;

    const-string v0, "invalid contents"

    invoke-direct {p1, v0}, Lcom/metamoji/pdf/core/PDFException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 15
    :cond_1
    invoke-virtual {p1}, Lcom/metamoji/pdf/core/PDFObj;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/metamoji/pdf/core/PDFObj;

    .line 16
    invoke-static {v1, v3, v4, v2}, Lcom/metamoji/pdf/core/PDFObj;->openStream$default(Lcom/metamoji/pdf/core/PDFObj;IILjava/lang/Object;)Lcom/metamoji/pdf/core/PDFInputStream;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 13
    :cond_2
    invoke-static {p1, v3, v4, v2}, Lcom/metamoji/pdf/core/PDFObj;->openStream$default(Lcom/metamoji/pdf/core/PDFObj;IILjava/lang/Object;)Lcom/metamoji/pdf/core/PDFInputStream;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 11
    :cond_3
    :goto_1
    iput-object v0, p0, Lcom/metamoji/pdf/content/ContentStream;->_streams:Ljava/util/List;

    .line 24
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    iput-object p1, p0, Lcom/metamoji/pdf/content/ContentStream;->_enum:Ljava/util/Iterator;

    .line 25
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 26
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/metamoji/pdf/core/PDFInputStream;

    iput-object p1, p0, Lcom/metamoji/pdf/content/ContentStream;->_current:Lcom/metamoji/pdf/core/PDFInputStream;

    :cond_4
    return-void
.end method


# virtual methods
.method public _read([BII)I
    .locals 2

    const-string v0, "buffer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    move v0, p2

    .line 40
    :goto_0
    iget-object v1, p0, Lcom/metamoji/pdf/content/ContentStream;->_current:Lcom/metamoji/pdf/core/PDFInputStream;

    if-eqz v1, :cond_2

    if-lez p3, :cond_2

    .line 41
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1, p1, v0, p3}, Lcom/metamoji/pdf/core/PDFInputStream;->_read([BII)I

    move-result v1

    if-nez v1, :cond_1

    .line 43
    iget-object v1, p0, Lcom/metamoji/pdf/content/ContentStream;->_enum:Ljava/util/Iterator;

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 p1, 0x0

    .line 44
    iput-object p1, p0, Lcom/metamoji/pdf/content/ContentStream;->_current:Lcom/metamoji/pdf/core/PDFInputStream;

    goto :goto_1

    .line 47
    :cond_0
    iget-object v1, p0, Lcom/metamoji/pdf/content/ContentStream;->_enum:Ljava/util/Iterator;

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/metamoji/pdf/core/PDFInputStream;

    iput-object v1, p0, Lcom/metamoji/pdf/content/ContentStream;->_current:Lcom/metamoji/pdf/core/PDFInputStream;

    const/16 v1, 0x20

    .line 52
    aput-byte v1, p1, v0

    const/4 v1, 0x1

    :cond_1
    add-int/2addr v0, v1

    sub-int/2addr p3, v1

    goto :goto_0

    :cond_2
    :goto_1
    sub-int/2addr v0, p2

    return v0
.end method

.method public close()V
    .locals 2

    .line 31
    iget-object v0, p0, Lcom/metamoji/pdf/content/ContentStream;->_streams:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/metamoji/pdf/core/PDFInputStream;

    .line 32
    invoke-virtual {v1}, Lcom/metamoji/pdf/core/PDFInputStream;->close()V

    goto :goto_0

    .line 34
    :cond_0
    invoke-super {p0}, Lcom/metamoji/pdf/core/PDFInputStream;->close()V

    return-void
.end method
