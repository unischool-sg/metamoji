.class final Lcom/metamoji/pdf/core/SaveFilePos;
.super Ljava/lang/Object;
.source "PDFXRef.kt"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u0002\n\u0000\u0008\u0002\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u0008\u0010\u0008\u001a\u00020\tH\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/metamoji/pdf/core/SaveFilePos;",
        "Ljava/io/Closeable;",
        "_file",
        "Lcom/metamoji/pdf/IPDFFile;",
        "<init>",
        "(Lcom/metamoji/pdf/IPDFFile;)V",
        "_pos",
        "",
        "close",
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
.field private final _file:Lcom/metamoji/pdf/IPDFFile;

.field private final _pos:J


# direct methods
.method public constructor <init>(Lcom/metamoji/pdf/IPDFFile;)V
    .locals 2

    const-string v0, "_file"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 271
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/metamoji/pdf/core/SaveFilePos;->_file:Lcom/metamoji/pdf/IPDFFile;

    .line 272
    invoke-interface {p1}, Lcom/metamoji/pdf/IPDFFile;->getPos()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/metamoji/pdf/core/SaveFilePos;->_pos:J

    return-void
.end method


# virtual methods
.method public close()V
    .locals 3

    .line 275
    iget-object v0, p0, Lcom/metamoji/pdf/core/SaveFilePos;->_file:Lcom/metamoji/pdf/IPDFFile;

    iget-wide v1, p0, Lcom/metamoji/pdf/core/SaveFilePos;->_pos:J

    invoke-interface {v0, v1, v2}, Lcom/metamoji/pdf/IPDFFile;->seek(J)V

    return-void
.end method
