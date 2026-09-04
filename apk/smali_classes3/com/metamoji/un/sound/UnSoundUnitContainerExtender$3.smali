.class Lcom/metamoji/un/sound/UnSoundUnitContainerExtender$3;
.super Ljava/lang/Object;
.source "UnSoundUnitContainerExtender.java"

# interfaces
.implements Lcom/metamoji/media/voice/controller/VcRecordingsManager$IVcDownloadCompletionAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/un/sound/UnSoundUnitContainerExtender;->handleSaveToFile(Lcom/metamoji/cm/CmContext;Lcom/metamoji/nt/NtUnitController;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/un/sound/UnSoundUnitContainerExtender;

.field final synthetic val$audioFile:Ljava/io/File;

.field final synthetic val$editorWindowController:Lcom/metamoji/nt/NtEditorWindowController;


# direct methods
.method constructor <init>(Lcom/metamoji/un/sound/UnSoundUnitContainerExtender;Lcom/metamoji/nt/NtEditorWindowController;Ljava/io/File;)V
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

    .line 268
    iput-object p1, p0, Lcom/metamoji/un/sound/UnSoundUnitContainerExtender$3;->this$0:Lcom/metamoji/un/sound/UnSoundUnitContainerExtender;

    iput-object p2, p0, Lcom/metamoji/un/sound/UnSoundUnitContainerExtender$3;->val$editorWindowController:Lcom/metamoji/nt/NtEditorWindowController;

    iput-object p3, p0, Lcom/metamoji/un/sound/UnSoundUnitContainerExtender$3;->val$audioFile:Ljava/io/File;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Ljava/io/File;ZZ)V
    .locals 0

    if-nez p1, :cond_0

    .line 272
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object p1

    new-instance p2, Lcom/metamoji/un/sound/UnSoundUnitContainerExtender$3$1;

    invoke-direct {p2, p0}, Lcom/metamoji/un/sound/UnSoundUnitContainerExtender$3$1;-><init>(Lcom/metamoji/un/sound/UnSoundUnitContainerExtender$3;)V

    invoke-virtual {p1, p2}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThread(Ljava/lang/Runnable;)Z

    return-void

    .line 285
    :cond_0
    const-string p1, "audio/x-m4a"

    invoke-static {p1}, Lcom/metamoji/noteanytime/cm/CmMimeType;->getExtensionByMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 286
    sget p2, Lcom/metamoji/noteanytime/R$string;->SCHOOL_SOUND_BUTTON:I

    invoke-static {p2}, Lcom/metamoji/cm/CmUtils;->loadString(I)Ljava/lang/String;

    move-result-object p2

    iget-object p3, p0, Lcom/metamoji/un/sound/UnSoundUnitContainerExtender$3;->val$editorWindowController:Lcom/metamoji/nt/NtEditorWindowController;

    invoke-virtual {p3}, Lcom/metamoji/nt/NtEditorWindowController;->getDocument()Lcom/metamoji/nt/NtDocument;

    move-result-object p3

    invoke-virtual {p3}, Lcom/metamoji/nt/NtDocument;->getDocumentTitle()Ljava/lang/String;

    move-result-object p3

    filled-new-array {p2, p3, p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "%s[%s]%s"

    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 287
    iget-object p2, p0, Lcom/metamoji/un/sound/UnSoundUnitContainerExtender$3;->val$audioFile:Ljava/io/File;

    invoke-static {p2, p1}, Lcom/metamoji/nt/NtShare;->saveAsM4a(Ljava/io/File;Ljava/lang/String;)V

    return-void
.end method
