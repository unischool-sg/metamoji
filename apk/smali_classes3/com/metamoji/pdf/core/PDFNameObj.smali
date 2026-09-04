.class public final Lcom/metamoji/pdf/core/PDFNameObj;
.super Lcom/metamoji/pdf/core/PDFObj;
.source "PDFObj.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u0008\u0010\n\u001a\u00020\u0003H\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0006\u001a\u00020\u00078VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0008\u0010\t\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/metamoji/pdf/core/PDFNameObj;",
        "Lcom/metamoji/pdf/core/PDFObj;",
        "_val",
        "",
        "<init>",
        "(Ljava/lang/String;)V",
        "type",
        "Lcom/metamoji/pdf/core/PDFObj$Type;",
        "getType",
        "()Lcom/metamoji/pdf/core/PDFObj$Type;",
        "name",
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
.field private final _val:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const-string v0, "_val"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 129
    invoke-direct {p0}, Lcom/metamoji/pdf/core/PDFObj;-><init>()V

    iput-object p1, p0, Lcom/metamoji/pdf/core/PDFNameObj;->_val:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getType()Lcom/metamoji/pdf/core/PDFObj$Type;
    .locals 1

    .line 130
    sget-object v0, Lcom/metamoji/pdf/core/PDFObj$Type;->NAME:Lcom/metamoji/pdf/core/PDFObj$Type;

    return-object v0
.end method

.method public name()Ljava/lang/String;
    .locals 1

    .line 131
    iget-object v0, p0, Lcom/metamoji/pdf/core/PDFNameObj;->_val:Ljava/lang/String;

    return-object v0
.end method
