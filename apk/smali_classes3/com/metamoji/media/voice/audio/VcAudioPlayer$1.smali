.class Lcom/metamoji/media/voice/audio/VcAudioPlayer$1;
.super Ljava/lang/Object;
.source "VcAudioPlayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/media/voice/audio/VcAudioPlayer;->playAfterDelay(D)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/media/voice/audio/VcAudioPlayer;


# direct methods
.method constructor <init>(Lcom/metamoji/media/voice/audio/VcAudioPlayer;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 61
    iput-object p1, p0, Lcom/metamoji/media/voice/audio/VcAudioPlayer$1;->this$0:Lcom/metamoji/media/voice/audio/VcAudioPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/metamoji/media/voice/audio/VcAudioPlayer$1;->this$0:Lcom/metamoji/media/voice/audio/VcAudioPlayer;

    invoke-virtual {v0}, Lcom/metamoji/media/voice/audio/VcAudioPlayer;->play()V

    return-void
.end method
