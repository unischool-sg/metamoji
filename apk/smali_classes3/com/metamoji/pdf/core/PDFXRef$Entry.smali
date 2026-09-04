.class final Lcom/metamoji/pdf/core/PDFXRef$Entry;
.super Ljava/lang/Object;
.source "PDFXRef.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/pdf/core/PDFXRef;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Entry"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u000b\u0008\u0002\u0018\u00002\u00020\u0001B\'\u0012\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0005\u0012\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u00a2\u0006\u0004\u0008\u0008\u0010\tR\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000bR\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\rR\u001c\u0010\u0006\u001a\u0004\u0018\u00010\u0007X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000e\u0010\u000f\"\u0004\u0008\u0010\u0010\u0011\u00a8\u0006\u0012"
    }
    d2 = {
        "Lcom/metamoji/pdf/core/PDFXRef$Entry;",
        "",
        "strm",
        "",
        "offset",
        "",
        "obj",
        "Lcom/metamoji/pdf/core/PDFObj;",
        "<init>",
        "(IJLcom/metamoji/pdf/core/PDFObj;)V",
        "getStrm",
        "()I",
        "getOffset",
        "()J",
        "getObj",
        "()Lcom/metamoji/pdf/core/PDFObj;",
        "setObj",
        "(Lcom/metamoji/pdf/core/PDFObj;)V",
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
.field private obj:Lcom/metamoji/pdf/core/PDFObj;

.field private final offset:J

.field private final strm:I


# direct methods
.method public constructor <init>()V
    .locals 7

    const/4 v5, 0x7

    const/4 v6, 0x0

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/metamoji/pdf/core/PDFXRef$Entry;-><init>(IJLcom/metamoji/pdf/core/PDFObj;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(IJLcom/metamoji/pdf/core/PDFObj;)V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/metamoji/pdf/core/PDFXRef$Entry;->strm:I

    iput-wide p2, p0, Lcom/metamoji/pdf/core/PDFXRef$Entry;->offset:J

    iput-object p4, p0, Lcom/metamoji/pdf/core/PDFXRef$Entry;->obj:Lcom/metamoji/pdf/core/PDFObj;

    return-void
.end method

.method public synthetic constructor <init>(IJLcom/metamoji/pdf/core/PDFObj;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_0

    const/4 p1, -0x1

    :cond_0
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_1

    const-wide/16 p2, -0x1

    :cond_1
    and-int/lit8 p5, p5, 0x4

    if-eqz p5, :cond_2

    const/4 p4, 0x0

    .line 10
    :cond_2
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/metamoji/pdf/core/PDFXRef$Entry;-><init>(IJLcom/metamoji/pdf/core/PDFObj;)V

    return-void
.end method


# virtual methods
.method public final getObj()Lcom/metamoji/pdf/core/PDFObj;
    .locals 1

    .line 10
    iget-object v0, p0, Lcom/metamoji/pdf/core/PDFXRef$Entry;->obj:Lcom/metamoji/pdf/core/PDFObj;

    return-object v0
.end method

.method public final getOffset()J
    .locals 2

    .line 10
    iget-wide v0, p0, Lcom/metamoji/pdf/core/PDFXRef$Entry;->offset:J

    return-wide v0
.end method

.method public final getStrm()I
    .locals 1

    .line 10
    iget v0, p0, Lcom/metamoji/pdf/core/PDFXRef$Entry;->strm:I

    return v0
.end method

.method public final setObj(Lcom/metamoji/pdf/core/PDFObj;)V
    .locals 0

    .line 10
    iput-object p1, p0, Lcom/metamoji/pdf/core/PDFXRef$Entry;->obj:Lcom/metamoji/pdf/core/PDFObj;

    return-void
.end method
