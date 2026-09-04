.class Lcom/metamoji/ns/NsCollaboManager$37;
.super Ljava/lang/Object;
.source "NsCollaboManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ns/NsCollaboManager;->updateUserInfo(Ljava/util/Map;ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/ns/NsCollaboManager;

.field final synthetic val$editorViewController:Lcom/metamoji/nt/NtEditorWindowController;

.field final synthetic val$nickName:Ljava/lang/String;

.field final synthetic val$presenterChangeEnable:Z


# direct methods
.method constructor <init>(Lcom/metamoji/ns/NsCollaboManager;ZLcom/metamoji/nt/NtEditorWindowController;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
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

    .line 3408
    iput-object p1, p0, Lcom/metamoji/ns/NsCollaboManager$37;->this$0:Lcom/metamoji/ns/NsCollaboManager;

    iput-boolean p2, p0, Lcom/metamoji/ns/NsCollaboManager$37;->val$presenterChangeEnable:Z

    iput-object p3, p0, Lcom/metamoji/ns/NsCollaboManager$37;->val$editorViewController:Lcom/metamoji/nt/NtEditorWindowController;

    iput-object p4, p0, Lcom/metamoji/ns/NsCollaboManager$37;->val$nickName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 3411
    iget-object v0, p0, Lcom/metamoji/ns/NsCollaboManager$37;->this$0:Lcom/metamoji/ns/NsCollaboManager;

    invoke-static {v0}, Lcom/metamoji/ns/NsCollaboManager;->-$$Nest$mgetCollaboModeBar(Lcom/metamoji/ns/NsCollaboManager;)Lcom/metamoji/ns/ui/NsCollaboModeViewBase;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3413
    invoke-virtual {v0}, Lcom/metamoji/ns/ui/NsCollaboModeViewBase;->updateStatusBtn()V

    .line 3417
    :cond_0
    iget-boolean v0, p0, Lcom/metamoji/ns/NsCollaboManager$37;->val$presenterChangeEnable:Z

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolCommand;->isAttentionMode()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3419
    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolCommand;->attentionUserInfoDicForEditor()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 3421
    const-string/jumbo v1, "userName"

    invoke-static {v0, v1}, Lcom/metamoji/ns/NsCollaboUtils;->GetValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/metamoji/cm/CmUtils;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 3420
    :cond_1
    const-string v0, ""

    .line 3424
    :goto_0
    new-instance v1, Lcom/metamoji/ns/NsCollaboManager$37$1;

    invoke-direct {v1, p0, v0}, Lcom/metamoji/ns/NsCollaboManager$37$1;-><init>(Lcom/metamoji/ns/NsCollaboManager$37;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/metamoji/forSchool/ScSchoolCommand;->handleSchoolAttentionEnd(Lcom/metamoji/ns/INsCollaboAction;)V

    :cond_2
    return-void
.end method
