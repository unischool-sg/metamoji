.class public final Lcom/metamoji/pdf/core/PDFBool;
.super Lcom/metamoji/pdf/core/PDFObj;
.source "PDFObj.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u0008\u0010\n\u001a\u00020\u0003H\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0006\u001a\u00020\u00078VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0008\u0010\t\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/metamoji/pdf/core/PDFBool;",
        "Lcom/metamoji/pdf/core/PDFObj;",
        "_val",
        "",
        "<init>",
        "(Z)V",
        "type",
        "Lcom/metamoji/pdf/core/PDFObj$Type;",
        "getType",
        "()Lcom/metamoji/pdf/core/PDFObj$Type;",
        "boolVal",
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
.field private final _val:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 0

    .line 105
    invoke-direct {p0}, Lcom/metamoji/pdf/core/PDFObj;-><init>()V

    iput-boolean p1, p0, Lcom/metamoji/pdf/core/PDFBool;->_val:Z

    return-void
.end method


# virtual methods
.method public boolVal()Z
    .locals 1

    .line 107
    iget-boolean v0, p0, Lcom/metamoji/pdf/core/PDFBool;->_val:Z

    return v0
.end method

.method public getType()Lcom/metamoji/pdf/core/PDFObj$Type;
    .locals 1

    .line 106
    sget-object v0, Lcom/metamoji/pdf/core/PDFObj$Type;->BOOL:Lcom/metamoji/pdf/core/PDFObj$Type;

    return-object v0
.end method
