.class Lcom/metamoji/media/ui/UnMediaPlayer$3;
.super Ljava/lang/Object;
.source "UnMediaPlayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/media/ui/UnMediaPlayer;->prepare(Ljava/io/File;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/media/ui/UnMediaPlayer;

.field final synthetic val$cacheFile:Ljava/io/File;


# direct methods
.method constructor <init>(Lcom/metamoji/media/ui/UnMediaPlayer;Ljava/io/File;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 112
    iput-object p1, p0, Lcom/metamoji/media/ui/UnMediaPlayer$3;->this$0:Lcom/metamoji/media/ui/UnMediaPlayer;

    iput-object p2, p0, Lcom/metamoji/media/ui/UnMediaPlayer$3;->val$cacheFile:Ljava/io/File;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 115
    iget-object v0, p0, Lcom/metamoji/media/ui/UnMediaPlayer$3;->this$0:Lcom/metamoji/media/ui/UnMediaPlayer;

    iget-object v1, p0, Lcom/metamoji/media/ui/UnMediaPlayer$3;->val$cacheFile:Ljava/io/File;

    invoke-virtual {v0, v1}, Lcom/metamoji/media/ui/UnMediaPlayer;->prepareInner(Ljava/io/File;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 116
    iget-object v0, p0, Lcom/metamoji/media/ui/UnMediaPlayer$3;->this$0:Lcom/metamoji/media/ui/UnMediaPlayer;

    invoke-virtual {v0}, Lcom/metamoji/media/ui/UnMediaPlayer;->showPrepareFailedMessage()V

    :cond_0
    return-void
.end method
