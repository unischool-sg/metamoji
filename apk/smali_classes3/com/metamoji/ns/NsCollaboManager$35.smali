.class Lcom/metamoji/ns/NsCollaboManager$35;
.super Ljava/lang/Object;
.source "NsCollaboManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ns/NsCollaboManager;->initUserInfoArray()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/ns/NsCollaboManager;

.field final synthetic val$editorWindowController:Lcom/metamoji/nt/NtEditorWindowController;


# direct methods
.method constructor <init>(Lcom/metamoji/ns/NsCollaboManager;Lcom/metamoji/nt/NtEditorWindowController;)V
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

    .line 3048
    iput-object p1, p0, Lcom/metamoji/ns/NsCollaboManager$35;->this$0:Lcom/metamoji/ns/NsCollaboManager;

    iput-object p2, p0, Lcom/metamoji/ns/NsCollaboManager$35;->val$editorWindowController:Lcom/metamoji/nt/NtEditorWindowController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 3051
    iget-object v0, p0, Lcom/metamoji/ns/NsCollaboManager$35;->val$editorWindowController:Lcom/metamoji/nt/NtEditorWindowController;

    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->getCollaboModeBar()Lcom/metamoji/ns/ui/NsCollaboModeViewBase;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 3053
    iget-object v1, p0, Lcom/metamoji/ns/NsCollaboManager$35;->this$0:Lcom/metamoji/ns/NsCollaboManager;

    iget-object v1, v1, Lcom/metamoji/ns/NsCollaboManager;->m_userInfoArray:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_0

    .line 3054
    iget-object v2, p0, Lcom/metamoji/ns/NsCollaboManager$35;->this$0:Lcom/metamoji/ns/NsCollaboManager;

    iget-object v2, v2, Lcom/metamoji/ns/NsCollaboManager;->m_userInfoArray:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/metamoji/ns/NsCollaboUserInfo;

    .line 3055
    invoke-virtual {v0, v2, v1}, Lcom/metamoji/ns/ui/NsCollaboModeViewBase;->removeUserInfo(Lcom/metamoji/ns/NsCollaboUserInfo;I)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 3057
    :cond_0
    invoke-virtual {v0}, Lcom/metamoji/ns/ui/NsCollaboModeViewBase;->reloadUserList()V

    :cond_1
    return-void
.end method
