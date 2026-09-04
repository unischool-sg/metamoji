.class final Lio/github/toyota32k/media/lib/codec/AudioDecoder$chainTo$1;
.super Lkotlin/jvm/internal/Lambda;
.source "AudioDecoder.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/github/toyota32k/media/lib/codec/AudioDecoder;->chainTo(Lio/github/toyota32k/media/lib/codec/BaseEncoder;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Landroid/media/MediaFormat;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "",
        "decodedFormat",
        "Landroid/media/MediaFormat;",
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
.field final synthetic this$0:Lio/github/toyota32k/media/lib/codec/AudioDecoder;


# direct methods
.method constructor <init>(Lio/github/toyota32k/media/lib/codec/AudioDecoder;)V
    .locals 0

    iput-object p1, p0, Lio/github/toyota32k/media/lib/codec/AudioDecoder$chainTo$1;->this$0:Lio/github/toyota32k/media/lib/codec/AudioDecoder;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 13
    check-cast p1, Landroid/media/MediaFormat;

    invoke-virtual {p0, p1}, Lio/github/toyota32k/media/lib/codec/AudioDecoder$chainTo$1;->invoke(Landroid/media/MediaFormat;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Landroid/media/MediaFormat;)V
    .locals 2

    const-string v0, "decodedFormat"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    iget-object v0, p0, Lio/github/toyota32k/media/lib/codec/AudioDecoder$chainTo$1;->this$0:Lio/github/toyota32k/media/lib/codec/AudioDecoder;

    invoke-static {v0}, Lio/github/toyota32k/media/lib/codec/AudioDecoder;->access$getAudioChannel$p(Lio/github/toyota32k/media/lib/codec/AudioDecoder;)Lio/github/toyota32k/media/lib/audio/AudioChannel;

    move-result-object v0

    iget-object v1, p0, Lio/github/toyota32k/media/lib/codec/AudioDecoder$chainTo$1;->this$0:Lio/github/toyota32k/media/lib/codec/AudioDecoder;

    invoke-virtual {v1}, Lio/github/toyota32k/media/lib/codec/AudioDecoder;->getMediaFormat()Landroid/media/MediaFormat;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lio/github/toyota32k/media/lib/audio/AudioChannel;->setActualDecodedFormat(Landroid/media/MediaFormat;Landroid/media/MediaFormat;)V

    return-void
.end method
