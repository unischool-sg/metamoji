.class final Lcom/metamoji/pdf/core/PDFEncryptString;
.super Lcom/metamoji/pdf/core/PDFString;
.source "PDFParser.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0001\n\u0000\u0008\u0002\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0008\u0010\u0004\u001a\u00020\u0005H\u0016\u00a8\u0006\u0006"
    }
    d2 = {
        "Lcom/metamoji/pdf/core/PDFEncryptString;",
        "Lcom/metamoji/pdf/core/PDFString;",
        "<init>",
        "()V",
        "stringVal",
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


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 109
    invoke-static {}, Lcom/metamoji/pdf/core/PDFParserKt;->getEMPTY_BYTES()[B

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/metamoji/pdf/core/PDFString;-><init>([B)V

    return-void
.end method


# virtual methods
.method public stringVal()Ljava/lang/Void;
    .locals 2

    .line 110
    new-instance v0, Lcom/metamoji/pdf/core/PDFException;

    const-string v1, "encrypted"

    invoke-direct {v0, v1}, Lcom/metamoji/pdf/core/PDFException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic stringVal()[B
    .locals 1

    .line 109
    invoke-virtual {p0}, Lcom/metamoji/pdf/core/PDFEncryptString;->stringVal()Ljava/lang/Void;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method
