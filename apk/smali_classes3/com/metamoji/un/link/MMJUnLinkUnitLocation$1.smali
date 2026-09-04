.class Lcom/metamoji/un/link/MMJUnLinkUnitLocation$1;
.super Ljava/lang/Object;
.source "MMJUnLinkUnitLocation.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/un/link/MMJUnLinkUnitLocation;->performJumpWithLinkInfo(Lcom/metamoji/un/link/MMJUnLinkInfo;ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$linkInfo:Lcom/metamoji/un/link/MMJUnLinkInfo;

.field final synthetic val$registerJumpHistory:Z

.field final synthetic val$removeJumpHistory:Z


# direct methods
.method constructor <init>(Lcom/metamoji/un/link/MMJUnLinkInfo;ZZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 116
    iput-object p1, p0, Lcom/metamoji/un/link/MMJUnLinkUnitLocation$1;->val$linkInfo:Lcom/metamoji/un/link/MMJUnLinkInfo;

    iput-boolean p2, p0, Lcom/metamoji/un/link/MMJUnLinkUnitLocation$1;->val$registerJumpHistory:Z

    iput-boolean p3, p0, Lcom/metamoji/un/link/MMJUnLinkUnitLocation$1;->val$removeJumpHistory:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .line 121
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 125
    :cond_0
    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->getDocument()Lcom/metamoji/nt/NtDocument;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 126
    invoke-virtual {v1}, Lcom/metamoji/nt/NtDocument;->isCollabo()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 127
    invoke-static {}, Lcom/metamoji/ns/NsCollaboManager;->getInstance()Lcom/metamoji/ns/NsCollaboManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/metamoji/ns/NsCollaboManager;->isPresenter()Z

    move-result v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 131
    :goto_0
    iget-object v2, p0, Lcom/metamoji/un/link/MMJUnLinkUnitLocation$1;->val$linkInfo:Lcom/metamoji/un/link/MMJUnLinkInfo;

    .line 132
    invoke-virtual {v2}, Lcom/metamoji/un/link/MMJUnLinkInfo;->getRoomID()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/metamoji/un/link/MMJUnLinkUnitLocation$1;->val$linkInfo:Lcom/metamoji/un/link/MMJUnLinkInfo;

    .line 133
    invoke-virtual {v3}, Lcom/metamoji/un/link/MMJUnLinkInfo;->getCompanyID()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/metamoji/un/link/MMJUnLinkUnitLocation$1;->val$linkInfo:Lcom/metamoji/un/link/MMJUnLinkInfo;

    .line 134
    invoke-virtual {v4}, Lcom/metamoji/un/link/MMJUnLinkInfo;->getDriveID()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/metamoji/un/link/MMJUnLinkUnitLocation$1;->val$linkInfo:Lcom/metamoji/un/link/MMJUnLinkInfo;

    .line 135
    invoke-virtual {v5}, Lcom/metamoji/un/link/MMJUnLinkInfo;->getDocID()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/metamoji/un/link/MMJUnLinkUnitLocation$1;->val$linkInfo:Lcom/metamoji/un/link/MMJUnLinkInfo;

    .line 136
    invoke-virtual {v6}, Lcom/metamoji/un/link/MMJUnLinkInfo;->getPageID()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/metamoji/un/link/MMJUnLinkUnitLocation$1;->val$linkInfo:Lcom/metamoji/un/link/MMJUnLinkInfo;

    .line 137
    invoke-virtual {v7}, Lcom/metamoji/un/link/MMJUnLinkInfo;->getIsMyself()Z

    move-result v7

    iget-boolean v8, p0, Lcom/metamoji/un/link/MMJUnLinkUnitLocation$1;->val$registerJumpHistory:Z

    iget-boolean v9, p0, Lcom/metamoji/un/link/MMJUnLinkUnitLocation$1;->val$removeJumpHistory:Z

    .line 131
    invoke-virtual/range {v0 .. v9}, Lcom/metamoji/nt/NtEditorWindowController;->openNote(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZ)V

    return-void
.end method
