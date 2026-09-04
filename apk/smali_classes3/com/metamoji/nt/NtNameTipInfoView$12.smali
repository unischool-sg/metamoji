.class Lcom/metamoji/nt/NtNameTipInfoView$12;
.super Ljava/lang/Object;
.source "NtNameTipInfoView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/nt/NtNameTipInfoView;->temporarilyRestore()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/nt/NtNameTipInfoView;


# direct methods
.method constructor <init>(Lcom/metamoji/nt/NtNameTipInfoView;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 693
    iput-object p1, p0, Lcom/metamoji/nt/NtNameTipInfoView$12;->this$0:Lcom/metamoji/nt/NtNameTipInfoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 696
    iget-object v0, p0, Lcom/metamoji/nt/NtNameTipInfoView$12;->this$0:Lcom/metamoji/nt/NtNameTipInfoView;

    invoke-static {v0}, Lcom/metamoji/nt/NtNameTipInfoView;->-$$Nest$fget_hideTemp(Lcom/metamoji/nt/NtNameTipInfoView;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 697
    iget-object v0, p0, Lcom/metamoji/nt/NtNameTipInfoView$12;->this$0:Lcom/metamoji/nt/NtNameTipInfoView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/metamoji/nt/NtNameTipInfoView;->-$$Nest$fput_hideTemp(Lcom/metamoji/nt/NtNameTipInfoView;Z)V

    .line 699
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 701
    iget-object v2, p0, Lcom/metamoji/nt/NtNameTipInfoView$12;->this$0:Lcom/metamoji/nt/NtNameTipInfoView;

    invoke-virtual {v2}, Lcom/metamoji/nt/NtNameTipInfoView;->layoutLabels()V

    .line 702
    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->getEditorDelegate()Lcom/metamoji/nt/INtEditor;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/metamoji/nt/INtEditor;->setUnitEditUserInfoViewVisibility(I)V

    .line 705
    :cond_0
    iget-object v0, p0, Lcom/metamoji/nt/NtNameTipInfoView$12;->this$0:Lcom/metamoji/nt/NtNameTipInfoView;

    invoke-static {v0}, Lcom/metamoji/nt/NtNameTipInfoView;->-$$Nest$fget_popupInfos(Lcom/metamoji/nt/NtNameTipInfoView;)Ljava/util/HashMap;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/metamoji/nt/NtNameTipInfoView$12;->this$0:Lcom/metamoji/nt/NtNameTipInfoView;

    invoke-static {v0}, Lcom/metamoji/nt/NtNameTipInfoView;->-$$Nest$fget_popupInfos(Lcom/metamoji/nt/NtNameTipInfoView;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-gtz v0, :cond_2

    .line 706
    :cond_1
    iget-object v0, p0, Lcom/metamoji/nt/NtNameTipInfoView$12;->this$0:Lcom/metamoji/nt/NtNameTipInfoView;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/metamoji/nt/NtNameTipInfoView;->-$$Nest$fput_popupInfos(Lcom/metamoji/nt/NtNameTipInfoView;Ljava/util/HashMap;)V

    .line 707
    iget-object v0, p0, Lcom/metamoji/nt/NtNameTipInfoView$12;->this$0:Lcom/metamoji/nt/NtNameTipInfoView;

    invoke-virtual {v0, v1}, Lcom/metamoji/nt/NtNameTipInfoView;->showInfoView(Z)V

    :cond_2
    return-void
.end method
