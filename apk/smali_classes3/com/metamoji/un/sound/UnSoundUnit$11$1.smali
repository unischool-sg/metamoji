.class Lcom/metamoji/un/sound/UnSoundUnit$11$1;
.super Ljava/lang/Object;
.source "UnSoundUnit.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/un/sound/UnSoundUnit$11;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/metamoji/un/sound/UnSoundUnit$11;


# direct methods
.method constructor <init>(Lcom/metamoji/un/sound/UnSoundUnit$11;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 1999
    iput-object p1, p0, Lcom/metamoji/un/sound/UnSoundUnit$11$1;->this$1:Lcom/metamoji/un/sound/UnSoundUnit$11;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 2002
    iget-object v0, p0, Lcom/metamoji/un/sound/UnSoundUnit$11$1;->this$1:Lcom/metamoji/un/sound/UnSoundUnit$11;

    iget-object v0, v0, Lcom/metamoji/un/sound/UnSoundUnit$11;->this$0:Lcom/metamoji/un/sound/UnSoundUnit;

    iget-object v0, v0, Lcom/metamoji/un/sound/UnSoundUnit;->player_:Lcom/metamoji/media/ui/UnMediaPlayer;

    iget-object v1, p0, Lcom/metamoji/un/sound/UnSoundUnit$11$1;->this$1:Lcom/metamoji/un/sound/UnSoundUnit$11;

    iget-object v1, v1, Lcom/metamoji/un/sound/UnSoundUnit$11;->val$cacheFolder:Ljava/io/File;

    iget-object v2, p0, Lcom/metamoji/un/sound/UnSoundUnit$11$1;->this$1:Lcom/metamoji/un/sound/UnSoundUnit$11;

    iget-object v2, v2, Lcom/metamoji/un/sound/UnSoundUnit$11;->val$cacheFilename:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/metamoji/media/ui/UnMediaPlayer;->prepare(Ljava/io/File;Ljava/lang/String;)V

    .line 2004
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    new-instance v1, Lcom/metamoji/un/sound/UnSoundUnit$11$1$1;

    invoke-direct {v1, p0}, Lcom/metamoji/un/sound/UnSoundUnit$11$1$1;-><init>(Lcom/metamoji/un/sound/UnSoundUnit$11$1;)V

    invoke-virtual {v0, v1}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThread(Ljava/lang/Runnable;)Z

    return-void
.end method
