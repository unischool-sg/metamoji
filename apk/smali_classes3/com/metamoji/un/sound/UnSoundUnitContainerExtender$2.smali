.class Lcom/metamoji/un/sound/UnSoundUnitContainerExtender$2;
.super Ljava/lang/Object;
.source "UnSoundUnitContainerExtender.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/un/sound/UnSoundUnitContainerExtender;->handleSendToApplication(Lcom/metamoji/cm/CmContext;Lcom/metamoji/nt/NtUnitController;)V
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

    .line 217
    iput-object p1, p0, Lcom/metamoji/un/sound/UnSoundUnitContainerExtender$2;->this$0:Lcom/metamoji/un/sound/UnSoundUnitContainerExtender;

    iput-object p2, p0, Lcom/metamoji/un/sound/UnSoundUnitContainerExtender$2;->val$editorWindowController:Lcom/metamoji/nt/NtEditorWindowController;

    iput-object p3, p0, Lcom/metamoji/un/sound/UnSoundUnitContainerExtender$2;->val$audioFile:Ljava/io/File;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 220
    const-string v0, "audio/x-m4a"

    invoke-static {v0}, Lcom/metamoji/noteanytime/cm/CmMimeType;->getExtensionByMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 221
    sget v1, Lcom/metamoji/noteanytime/R$string;->SCHOOL_SOUND_BUTTON:I

    invoke-static {v1}, Lcom/metamoji/cm/CmUtils;->loadString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/metamoji/un/sound/UnSoundUnitContainerExtender$2;->val$editorWindowController:Lcom/metamoji/nt/NtEditorWindowController;

    invoke-virtual {v2}, Lcom/metamoji/nt/NtEditorWindowController;->getDocument()Lcom/metamoji/nt/NtDocument;

    move-result-object v2

    invoke-virtual {v2}, Lcom/metamoji/nt/NtDocument;->getDocumentTitle()Ljava/lang/String;

    move-result-object v2

    filled-new-array {v1, v2, v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "%s[%s]%s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 222
    iget-object v1, p0, Lcom/metamoji/un/sound/UnSoundUnitContainerExtender$2;->val$audioFile:Ljava/io/File;

    invoke-static {v1, v0}, Lcom/metamoji/nt/NtShare;->shareAsM4a(Ljava/io/File;Ljava/lang/String;)V

    return-void
.end method
