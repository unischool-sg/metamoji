.class public final Lcom/metamoji/pdf/content/ContentParser$BI;
.super Lcom/metamoji/pdf/core/PDFDictionary;
.source "ContentParser.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/pdf/content/ContentParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "BI"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0012\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\u0018\u00002\u00020\u0001B#\u0012\u0012\u0010\u0002\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\u0010\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u0011H\u0016R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\n\u001a\u00020\u000b8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u000c\u0010\r\u00a8\u0006\u0012"
    }
    d2 = {
        "Lcom/metamoji/pdf/content/ContentParser$BI;",
        "Lcom/metamoji/pdf/core/PDFDictionary;",
        "dic",
        "",
        "",
        "Lcom/metamoji/pdf/core/PDFObj;",
        "_data",
        "",
        "<init>",
        "(Ljava/util/Map;[B)V",
        "type",
        "Lcom/metamoji/pdf/core/PDFObj$Type;",
        "getType",
        "()Lcom/metamoji/pdf/core/PDFObj$Type;",
        "openStream",
        "Lcom/metamoji/pdf/core/PDFInputStream;",
        "exclude",
        "",
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
.field private final _data:[B


# direct methods
.method public constructor <init>(Ljava/util/Map;[B)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Lcom/metamoji/pdf/core/PDFObj;",
            ">;[B)V"
        }
    .end annotation

    const-string v0, "dic"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "_data"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    invoke-direct {p0, p1}, Lcom/metamoji/pdf/core/PDFDictionary;-><init>(Ljava/util/Map;)V

    iput-object p2, p0, Lcom/metamoji/pdf/content/ContentParser$BI;->_data:[B

    return-void
.end method


# virtual methods
.method public getType()Lcom/metamoji/pdf/core/PDFObj$Type;
    .locals 1

    .line 44
    sget-object v0, Lcom/metamoji/pdf/core/PDFObj$Type;->STREAM:Lcom/metamoji/pdf/core/PDFObj$Type;

    return-object v0
.end method

.method public openStream(I)Lcom/metamoji/pdf/core/PDFInputStream;
    .locals 8

    .line 47
    new-instance v0, Lcom/metamoji/pdf/content/PDFStringStream;

    iget-object v1, p0, Lcom/metamoji/pdf/content/ContentParser$BI;->_data:[B

    invoke-direct {v0, v1}, Lcom/metamoji/pdf/content/PDFStringStream;-><init>([B)V

    move-object v3, v0

    check-cast v3, Lcom/metamoji/pdf/core/PDFInputStream;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v5, 0x1

    move-object v2, p0

    move v4, p1

    invoke-virtual/range {v2 .. v7}, Lcom/metamoji/pdf/content/ContentParser$BI;->filterStream(Lcom/metamoji/pdf/core/PDFInputStream;IZLcom/metamoji/pdf/core/IPDFDocument;[B)Lcom/metamoji/pdf/core/PDFInputStream;

    move-result-object p1

    return-object p1
.end method
