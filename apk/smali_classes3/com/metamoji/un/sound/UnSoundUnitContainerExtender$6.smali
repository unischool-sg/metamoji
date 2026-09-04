.class Lcom/metamoji/un/sound/UnSoundUnitContainerExtender$6;
.super Ljava/lang/Object;
.source "UnSoundUnitContainerExtender.java"

# interfaces
.implements Lcom/metamoji/media/voice/converter/VcBgTaskForConvertAudio$IMediaBgTaskForConvertAudioCompleteAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/un/sound/UnSoundUnitContainerExtender;->handleAddSoundUnitFromFile(Lcom/metamoji/cm/CmContext;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Lcom/metamoji/cm/CmContext;


# direct methods
.method constructor <init>(Lcom/metamoji/cm/CmContext;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 381
    iput-object p1, p0, Lcom/metamoji/un/sound/UnSoundUnitContainerExtender$6;->val$context:Lcom/metamoji/cm/CmContext;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic lambda$action$0(Ljava/io/File;Lcom/metamoji/cm/CmContext;)V
    .locals 0

    .line 384
    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/metamoji/un/sound/UnSoundUnitContainerExtender;->addSoundUnit(Ljava/lang/String;Lcom/metamoji/cm/CmContext;)V

    return-void
.end method


# virtual methods
.method public action(Ljava/io/File;)V
    .locals 3

    .line 384
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    iget-object v1, p0, Lcom/metamoji/un/sound/UnSoundUnitContainerExtender$6;->val$context:Lcom/metamoji/cm/CmContext;

    new-instance v2, Lcom/metamoji/un/sound/UnSoundUnitContainerExtender$6$$ExternalSyntheticLambda0;

    invoke-direct {v2, p1, v1}, Lcom/metamoji/un/sound/UnSoundUnitContainerExtender$6$$ExternalSyntheticLambda0;-><init>(Ljava/io/File;Lcom/metamoji/cm/CmContext;)V

    invoke-virtual {v0, v2}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThread(Ljava/lang/Runnable;)Z

    return-void
.end method
