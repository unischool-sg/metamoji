.class public final Lcom/metamoji/pdf/core/PDFDouble;
.super Lcom/metamoji/pdf/core/PDFObj;
.source "PDFObj.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0006\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u0008\u0010\n\u001a\u00020\u000bH\u0016J\u0008\u0010\u000c\u001a\u00020\rH\u0016J\u0008\u0010\u000e\u001a\u00020\u0003H\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0006\u001a\u00020\u00078VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0008\u0010\t\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcom/metamoji/pdf/core/PDFDouble;",
        "Lcom/metamoji/pdf/core/PDFObj;",
        "_val",
        "",
        "<init>",
        "(D)V",
        "type",
        "Lcom/metamoji/pdf/core/PDFObj$Type;",
        "getType",
        "()Lcom/metamoji/pdf/core/PDFObj$Type;",
        "intVal",
        "",
        "longVal",
        "",
        "doubleVal",
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
.field private final _val:D


# direct methods
.method public constructor <init>(D)V
    .locals 0

    .line 117
    invoke-direct {p0}, Lcom/metamoji/pdf/core/PDFObj;-><init>()V

    iput-wide p1, p0, Lcom/metamoji/pdf/core/PDFDouble;->_val:D

    return-void
.end method


# virtual methods
.method public doubleVal()D
    .locals 2

    .line 121
    iget-wide v0, p0, Lcom/metamoji/pdf/core/PDFDouble;->_val:D

    return-wide v0
.end method

.method public getType()Lcom/metamoji/pdf/core/PDFObj$Type;
    .locals 1

    .line 118
    sget-object v0, Lcom/metamoji/pdf/core/PDFObj$Type;->DOUBLE:Lcom/metamoji/pdf/core/PDFObj$Type;

    return-object v0
.end method

.method public intVal()I
    .locals 2

    .line 119
    iget-wide v0, p0, Lcom/metamoji/pdf/core/PDFDouble;->_val:D

    double-to-int v0, v0

    return v0
.end method

.method public longVal()J
    .locals 2

    .line 120
    iget-wide v0, p0, Lcom/metamoji/pdf/core/PDFDouble;->_val:D

    double-to-long v0, v0

    return-wide v0
.end method
