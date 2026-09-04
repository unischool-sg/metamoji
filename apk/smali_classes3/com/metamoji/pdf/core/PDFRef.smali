.class public final Lcom/metamoji/pdf/core/PDFRef;
.super Lcom/metamoji/pdf/core/PDFObj;
.source "PDFObj.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u0008\u0010\u0010\u001a\u00020\u0001H\u0016R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\nR\u0011\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\nR\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u000c\u001a\u00020\r8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u000e\u0010\u000f\u00a8\u0006\u0011"
    }
    d2 = {
        "Lcom/metamoji/pdf/core/PDFRef;",
        "Lcom/metamoji/pdf/core/PDFObj;",
        "id",
        "",
        "gen",
        "_doc",
        "Lcom/metamoji/pdf/core/IPDFDocument;",
        "<init>",
        "(IILcom/metamoji/pdf/core/IPDFDocument;)V",
        "getId",
        "()I",
        "getGen",
        "type",
        "Lcom/metamoji/pdf/core/PDFObj$Type;",
        "getType",
        "()Lcom/metamoji/pdf/core/PDFObj$Type;",
        "resolve",
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
.field private final _doc:Lcom/metamoji/pdf/core/IPDFDocument;

.field private final gen:I

.field private final id:I


# direct methods
.method public constructor <init>(IILcom/metamoji/pdf/core/IPDFDocument;)V
    .locals 1

    const-string v0, "_doc"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 263
    invoke-direct {p0}, Lcom/metamoji/pdf/core/PDFObj;-><init>()V

    iput p1, p0, Lcom/metamoji/pdf/core/PDFRef;->id:I

    iput p2, p0, Lcom/metamoji/pdf/core/PDFRef;->gen:I

    iput-object p3, p0, Lcom/metamoji/pdf/core/PDFRef;->_doc:Lcom/metamoji/pdf/core/IPDFDocument;

    return-void
.end method


# virtual methods
.method public final getGen()I
    .locals 1

    .line 263
    iget v0, p0, Lcom/metamoji/pdf/core/PDFRef;->gen:I

    return v0
.end method

.method public final getId()I
    .locals 1

    .line 263
    iget v0, p0, Lcom/metamoji/pdf/core/PDFRef;->id:I

    return v0
.end method

.method public getType()Lcom/metamoji/pdf/core/PDFObj$Type;
    .locals 1

    .line 264
    sget-object v0, Lcom/metamoji/pdf/core/PDFObj$Type;->REFERENCE:Lcom/metamoji/pdf/core/PDFObj$Type;

    return-object v0
.end method

.method public resolve()Lcom/metamoji/pdf/core/PDFObj;
    .locals 3

    .line 265
    iget-object v0, p0, Lcom/metamoji/pdf/core/PDFRef;->_doc:Lcom/metamoji/pdf/core/IPDFDocument;

    iget v1, p0, Lcom/metamoji/pdf/core/PDFRef;->id:I

    iget v2, p0, Lcom/metamoji/pdf/core/PDFRef;->gen:I

    invoke-interface {v0, v1, v2}, Lcom/metamoji/pdf/core/IPDFDocument;->getObject(II)Lcom/metamoji/pdf/core/PDFObj;

    move-result-object v0

    return-object v0
.end method
