.class Lcom/metamoji/media/ui/UnMediaPlayer$2;
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

.field final synthetic val$result:Z


# direct methods
.method constructor <init>(Lcom/metamoji/media/ui/UnMediaPlayer;ZLjava/io/File;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 95
    iput-object p1, p0, Lcom/metamoji/media/ui/UnMediaPlayer$2;->this$0:Lcom/metamoji/media/ui/UnMediaPlayer;

    iput-boolean p2, p0, Lcom/metamoji/media/ui/UnMediaPlayer$2;->val$result:Z

    iput-object p3, p0, Lcom/metamoji/media/ui/UnMediaPlayer$2;->val$cacheFile:Ljava/io/File;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 98
    iget-boolean v0, p0, Lcom/metamoji/media/ui/UnMediaPlayer$2;->val$result:Z

    .line 107
    iget-object v1, p0, Lcom/metamoji/media/ui/UnMediaPlayer$2;->this$0:Lcom/metamoji/media/ui/UnMediaPlayer;

    if-eqz v0, :cond_1

    .line 100
    :try_start_0
    iget-object v0, p0, Lcom/metamoji/media/ui/UnMediaPlayer$2;->val$cacheFile:Ljava/io/File;

    invoke-virtual {v1, v0}, Lcom/metamoji/media/ui/UnMediaPlayer;->prepareInner(Ljava/io/File;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 101
    iget-object v0, p0, Lcom/metamoji/media/ui/UnMediaPlayer$2;->this$0:Lcom/metamoji/media/ui/UnMediaPlayer;

    invoke-virtual {v0}, Lcom/metamoji/media/ui/UnMediaPlayer;->showPrepareFailedMessage()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    .line 104
    :catch_0
    iget-object v0, p0, Lcom/metamoji/media/ui/UnMediaPlayer$2;->this$0:Lcom/metamoji/media/ui/UnMediaPlayer;

    invoke-virtual {v0}, Lcom/metamoji/media/ui/UnMediaPlayer;->showPrepareFailedMessage()V

    return-void

    .line 107
    :cond_1
    invoke-virtual {v1}, Lcom/metamoji/media/ui/UnMediaPlayer;->showPrepareFailedMessage()V

    return-void
.end method
