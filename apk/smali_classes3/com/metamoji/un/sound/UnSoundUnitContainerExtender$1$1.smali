.class Lcom/metamoji/un/sound/UnSoundUnitContainerExtender$1$1;
.super Ljava/lang/Object;
.source "UnSoundUnitContainerExtender.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/un/sound/UnSoundUnitContainerExtender$1;->onCompletion(Ljava/io/File;ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/metamoji/un/sound/UnSoundUnitContainerExtender$1;


# direct methods
.method constructor <init>(Lcom/metamoji/un/sound/UnSoundUnitContainerExtender$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 194
    iput-object p1, p0, Lcom/metamoji/un/sound/UnSoundUnitContainerExtender$1$1;->this$1:Lcom/metamoji/un/sound/UnSoundUnitContainerExtender$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 197
    invoke-static {}, Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings;->getInstanceFromSystemSettings()Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings;

    move-result-object v0

    .line 198
    invoke-virtual {v0}, Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings;->getUserInfo()Lcom/metamoji/cs/dc/user/CsDCUserInfo;

    move-result-object v0

    .line 199
    iget-boolean v0, v0, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->isOnPremise:Z

    if-eqz v0, :cond_0

    .line 200
    sget v0, Lcom/metamoji/noteanytime/R$string;->Voice_InvalidUrl_OnPremise:I

    invoke-static {v0}, Lcom/metamoji/cm/CmUtils;->loadString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/metamoji/media/voice/VcUtil$VcResultCheck;->showError(Ljava/lang/String;)V

    return-void

    .line 202
    :cond_0
    sget v0, Lcom/metamoji/noteanytime/R$string;->Voice_InvalidUrl:I

    invoke-static {v0}, Lcom/metamoji/cm/CmUtils;->loadString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/metamoji/media/voice/VcUtil$VcResultCheck;->showError(Ljava/lang/String;)V

    return-void
.end method
