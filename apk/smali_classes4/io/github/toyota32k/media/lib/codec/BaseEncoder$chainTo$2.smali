.class final Lio/github/toyota32k/media/lib/codec/BaseEncoder$chainTo$2;
.super Lkotlin/jvm/internal/Lambda;
.source "BaseEncoder.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/github/toyota32k/media/lib/codec/BaseEncoder;->chainTo(Lio/github/toyota32k/media/lib/track/Muxer;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0010\u000e\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x6,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $result:I

.field final synthetic this$0:Lio/github/toyota32k/media/lib/codec/BaseEncoder;


# direct methods
.method constructor <init>(ILio/github/toyota32k/media/lib/codec/BaseEncoder;)V
    .locals 0

    iput p1, p0, Lio/github/toyota32k/media/lib/codec/BaseEncoder$chainTo$2;->$result:I

    iput-object p2, p0, Lio/github/toyota32k/media/lib/codec/BaseEncoder$chainTo$2;->this$0:Lio/github/toyota32k/media/lib/codec/BaseEncoder;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 45
    invoke-virtual {p0}, Lio/github/toyota32k/media/lib/codec/BaseEncoder$chainTo$2;->invoke()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final invoke()Ljava/lang/String;
    .locals 2

    .line 45
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "output:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lio/github/toyota32k/media/lib/codec/BaseEncoder$chainTo$2;->$result:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " size="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lio/github/toyota32k/media/lib/codec/BaseEncoder$chainTo$2;->this$0:Lio/github/toyota32k/media/lib/codec/BaseEncoder;

    invoke-virtual {v1}, Lio/github/toyota32k/media/lib/codec/BaseEncoder;->getBufferInfo()Landroid/media/MediaCodec$BufferInfo;

    move-result-object v1

    iget v1, v1, Landroid/media/MediaCodec$BufferInfo;->size:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
