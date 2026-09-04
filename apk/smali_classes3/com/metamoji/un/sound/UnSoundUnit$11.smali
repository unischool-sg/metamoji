.class Lcom/metamoji/un/sound/UnSoundUnit$11;
.super Ljava/lang/Object;
.source "UnSoundUnit.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/un/sound/UnSoundUnit;->play(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/un/sound/UnSoundUnit;

.field final synthetic val$cacheFilename:Ljava/lang/String;

.field final synthetic val$cacheFolder:Ljava/io/File;

.field final synthetic val$paused:Z

.field final synthetic val$soundUnit:Lcom/metamoji/un/sound/UnSoundUnit;


# direct methods
.method constructor <init>(Lcom/metamoji/un/sound/UnSoundUnit;Lcom/metamoji/un/sound/UnSoundUnit;Ljava/io/File;Ljava/lang/String;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
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

    .line 1991
    iput-object p1, p0, Lcom/metamoji/un/sound/UnSoundUnit$11;->this$0:Lcom/metamoji/un/sound/UnSoundUnit;

    iput-object p2, p0, Lcom/metamoji/un/sound/UnSoundUnit$11;->val$soundUnit:Lcom/metamoji/un/sound/UnSoundUnit;

    iput-object p3, p0, Lcom/metamoji/un/sound/UnSoundUnit$11;->val$cacheFolder:Ljava/io/File;

    iput-object p4, p0, Lcom/metamoji/un/sound/UnSoundUnit$11;->val$cacheFilename:Ljava/lang/String;

    iput-boolean p5, p0, Lcom/metamoji/un/sound/UnSoundUnit$11;->val$paused:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1994
    iget-object v0, p0, Lcom/metamoji/un/sound/UnSoundUnit$11;->this$0:Lcom/metamoji/un/sound/UnSoundUnit;

    iget-object v0, v0, Lcom/metamoji/un/sound/UnSoundUnit;->player_:Lcom/metamoji/media/ui/UnMediaPlayer;

    if-nez v0, :cond_0

    .line 1995
    iget-object v0, p0, Lcom/metamoji/un/sound/UnSoundUnit$11;->this$0:Lcom/metamoji/un/sound/UnSoundUnit;

    new-instance v1, Lcom/metamoji/media/ui/UnMediaPlayer;

    invoke-direct {v1}, Lcom/metamoji/media/ui/UnMediaPlayer;-><init>()V

    iput-object v1, v0, Lcom/metamoji/un/sound/UnSoundUnit;->player_:Lcom/metamoji/media/ui/UnMediaPlayer;

    .line 1996
    iget-object v0, p0, Lcom/metamoji/un/sound/UnSoundUnit$11;->this$0:Lcom/metamoji/un/sound/UnSoundUnit;

    iget-object v0, v0, Lcom/metamoji/un/sound/UnSoundUnit;->player_:Lcom/metamoji/media/ui/UnMediaPlayer;

    iget-object v1, p0, Lcom/metamoji/un/sound/UnSoundUnit$11;->val$soundUnit:Lcom/metamoji/un/sound/UnSoundUnit;

    invoke-virtual {v0, v1}, Lcom/metamoji/media/ui/UnMediaPlayer;->setSoundUnit(Lcom/metamoji/un/sound/UnSoundUnit;)V

    .line 1999
    :cond_0
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    new-instance v1, Lcom/metamoji/un/sound/UnSoundUnit$11$1;

    invoke-direct {v1, p0}, Lcom/metamoji/un/sound/UnSoundUnit$11$1;-><init>(Lcom/metamoji/un/sound/UnSoundUnit$11;)V

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2}, Lcom/metamoji/cm/CmTaskManager;->ensureRunOnBackground(Ljava/lang/Runnable;Lcom/metamoji/cm/CmTaskManager$ICancellable;Lcom/metamoji/cm/CmTaskManager$IOnCompleted;)V

    return-void
.end method
