.class Lcom/metamoji/media/voice/controller/VcRecordingsController$15;
.super Ljava/lang/Object;
.source "VcRecordingsController.java"

# interfaces
.implements Lcom/metamoji/media/voice/controller/VcRecordingsManager$IVcDownloadCompletionAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/media/voice/controller/VcRecordingsController;->handleExportRecordingToFile(Lcom/metamoji/cm/CmContext;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/media/voice/controller/VcRecordingsController;

.field final synthetic val$ticket:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/metamoji/media/voice/controller/VcRecordingsController;Ljava/lang/String;)V
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

    .line 1260
    iput-object p1, p0, Lcom/metamoji/media/voice/controller/VcRecordingsController$15;->this$0:Lcom/metamoji/media/voice/controller/VcRecordingsController;

    iput-object p2, p0, Lcom/metamoji/media/voice/controller/VcRecordingsController$15;->val$ticket:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Ljava/io/File;ZZ)V
    .locals 1

    if-eqz p2, :cond_0

    .line 1265
    iget-object p2, p0, Lcom/metamoji/media/voice/controller/VcRecordingsController$15;->this$0:Lcom/metamoji/media/voice/controller/VcRecordingsController;

    invoke-virtual {p2}, Lcom/metamoji/media/voice/controller/VcRecordingsController;->getDocument()Lcom/metamoji/nt/NtDocument;

    move-result-object p2

    const/4 p3, 0x1

    invoke-virtual {p2, p3}, Lcom/metamoji/nt/NtDocument;->setSaveOnEnd(Z)V

    :cond_0
    if-nez p1, :cond_2

    .line 1269
    invoke-static {}, Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings;->getInstanceFromSystemSettings()Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings;

    move-result-object p1

    .line 1270
    invoke-virtual {p1}, Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings;->getUserInfo()Lcom/metamoji/cs/dc/user/CsDCUserInfo;

    move-result-object p1

    .line 1271
    iget-boolean p1, p1, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->isOnPremise:Z

    if-eqz p1, :cond_1

    .line 1272
    sget p1, Lcom/metamoji/noteanytime/R$string;->Voice_InvalidUrl_OnPremise:I

    invoke-static {p1}, Lcom/metamoji/cm/CmUtils;->loadString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/metamoji/media/voice/VcUtil$VcResultCheck;->showError(Ljava/lang/String;)V

    return-void

    .line 1274
    :cond_1
    sget p1, Lcom/metamoji/noteanytime/R$string;->Voice_InvalidUrl:I

    invoke-static {p1}, Lcom/metamoji/cm/CmUtils;->loadString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/metamoji/media/voice/VcUtil$VcResultCheck;->showError(Ljava/lang/String;)V

    return-void

    .line 1292
    :cond_2
    iget-object p2, p0, Lcom/metamoji/media/voice/controller/VcRecordingsController$15;->this$0:Lcom/metamoji/media/voice/controller/VcRecordingsController;

    iget-object p3, p0, Lcom/metamoji/media/voice/controller/VcRecordingsController$15;->val$ticket:Ljava/lang/String;

    invoke-virtual {p2, p3}, Lcom/metamoji/media/voice/controller/VcRecordingsController;->getTitleOnExportForTicket(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 1293
    const-string p3, "audio/x-m4a"

    invoke-static {p3}, Lcom/metamoji/noteanytime/cm/CmMimeType;->getExtensionByMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 1294
    const-string v0, "%s%s"

    filled-new-array {p2, p3}, [Ljava/lang/Object;

    move-result-object p2

    invoke-static {v0, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 1295
    invoke-static {p1, p2}, Lcom/metamoji/nt/NtShare;->saveAsM4a(Ljava/io/File;Ljava/lang/String;)V

    return-void
.end method
