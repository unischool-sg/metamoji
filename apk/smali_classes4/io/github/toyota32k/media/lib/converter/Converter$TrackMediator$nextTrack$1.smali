.class final Lio/github/toyota32k/media/lib/converter/Converter$TrackMediator$nextTrack$1;
.super Lkotlin/jvm/internal/Lambda;
.source "Converter.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/github/toyota32k/media/lib/converter/Converter$TrackMediator;->getNextTrack()Lio/github/toyota32k/media/lib/track/Track;
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
.field final synthetic this$0:Lio/github/toyota32k/media/lib/converter/Converter$TrackMediator;


# direct methods
.method constructor <init>(Lio/github/toyota32k/media/lib/converter/Converter$TrackMediator;)V
    .locals 0

    iput-object p1, p0, Lio/github/toyota32k/media/lib/converter/Converter$TrackMediator$nextTrack$1;->this$0:Lio/github/toyota32k/media/lib/converter/Converter$TrackMediator;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 332
    invoke-virtual {p0}, Lio/github/toyota32k/media/lib/converter/Converter$TrackMediator$nextTrack$1;->invoke()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final invoke()Ljava/lang/String;
    .locals 2

    .line 332
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "no response from video track ("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lio/github/toyota32k/media/lib/converter/Converter$TrackMediator$nextTrack$1;->this$0:Lio/github/toyota32k/media/lib/converter/Converter$TrackMediator;

    invoke-static {v1}, Lio/github/toyota32k/media/lib/converter/Converter$TrackMediator;->access$getVideoNoEffectContext$p(Lio/github/toyota32k/media/lib/converter/Converter$TrackMediator;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") ... try audio track."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
