.class Lcom/metamoji/forSchool/monitoring/ScMonitorList$26;
.super Ljava/lang/Object;
.source "ScMonitorList.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/forSchool/monitoring/ScMonitorList;->updatePageJumpBtnEnabled()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/forSchool/monitoring/ScMonitorList;


# direct methods
.method constructor <init>(Lcom/metamoji/forSchool/monitoring/ScMonitorList;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 2732
    iput-object p1, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList$26;->this$0:Lcom/metamoji/forSchool/monitoring/ScMonitorList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 2737
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2739
    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->getCommandManager()Lcom/metamoji/nt/NtCommandManager;

    move-result-object v2

    sget-object v3, Lcom/metamoji/nt/NtCommand;->CMD_PAGE_BACKW:Lcom/metamoji/nt/NtCommand;

    invoke-virtual {v2, v3}, Lcom/metamoji/nt/NtCommandManager;->isCommandSurelyEnabled(Lcom/metamoji/nt/NtCommand;)Z

    move-result v2

    .line 2740
    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->getCommandManager()Lcom/metamoji/nt/NtCommandManager;

    move-result-object v0

    sget-object v3, Lcom/metamoji/nt/NtCommand;->CMD_PAGE_FORW:Lcom/metamoji/nt/NtCommand;

    invoke-virtual {v0, v3}, Lcom/metamoji/nt/NtCommandManager;->isCommandSurelyEnabled(Lcom/metamoji/nt/NtCommand;)Z

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    move v2, v0

    .line 2742
    :goto_0
    iget-object v3, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList$26;->this$0:Lcom/metamoji/forSchool/monitoring/ScMonitorList;

    invoke-static {v3}, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->-$$Nest$fgetm_pagePrevBtn(Lcom/metamoji/forSchool/monitoring/ScMonitorList;)Landroid/widget/ImageButton;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 2747
    iget-object v3, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList$26;->this$0:Lcom/metamoji/forSchool/monitoring/ScMonitorList;

    const/4 v4, 0x4

    if-eqz v2, :cond_1

    .line 2745
    invoke-static {v3}, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->-$$Nest$fgetm_pagePrevBtn(Lcom/metamoji/forSchool/monitoring/ScMonitorList;)Landroid/widget/ImageButton;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_1

    .line 2747
    :cond_1
    invoke-static {v3}, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->-$$Nest$fgetm_pagePrevBtn(Lcom/metamoji/forSchool/monitoring/ScMonitorList;)Landroid/widget/ImageButton;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 2749
    :goto_1
    iget-object v2, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList$26;->this$0:Lcom/metamoji/forSchool/monitoring/ScMonitorList;

    invoke-static {v2}, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->-$$Nest$fgetm_pageNextBtn(Lcom/metamoji/forSchool/monitoring/ScMonitorList;)Landroid/widget/ImageButton;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 2754
    iget-object v2, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList$26;->this$0:Lcom/metamoji/forSchool/monitoring/ScMonitorList;

    if-eqz v0, :cond_2

    .line 2752
    invoke-static {v2}, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->-$$Nest$fgetm_pageNextBtn(Lcom/metamoji/forSchool/monitoring/ScMonitorList;)Landroid/widget/ImageButton;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    return-void

    .line 2754
    :cond_2
    invoke-static {v2}, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->-$$Nest$fgetm_pageNextBtn(Lcom/metamoji/forSchool/monitoring/ScMonitorList;)Landroid/widget/ImageButton;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/ImageButton;->setVisibility(I)V

    return-void
.end method
