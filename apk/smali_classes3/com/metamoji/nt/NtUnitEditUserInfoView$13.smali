.class Lcom/metamoji/nt/NtUnitEditUserInfoView$13;
.super Ljava/lang/Object;
.source "NtUnitEditUserInfoView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/nt/NtUnitEditUserInfoView;->temporarilyRestore()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/nt/NtUnitEditUserInfoView;


# direct methods
.method constructor <init>(Lcom/metamoji/nt/NtUnitEditUserInfoView;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 781
    iput-object p1, p0, Lcom/metamoji/nt/NtUnitEditUserInfoView$13;->this$0:Lcom/metamoji/nt/NtUnitEditUserInfoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 784
    iget-object v0, p0, Lcom/metamoji/nt/NtUnitEditUserInfoView$13;->this$0:Lcom/metamoji/nt/NtUnitEditUserInfoView;

    invoke-static {v0}, Lcom/metamoji/nt/NtUnitEditUserInfoView;->-$$Nest$fget_hideTemp(Lcom/metamoji/nt/NtUnitEditUserInfoView;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 785
    iget-object v0, p0, Lcom/metamoji/nt/NtUnitEditUserInfoView$13;->this$0:Lcom/metamoji/nt/NtUnitEditUserInfoView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/metamoji/nt/NtUnitEditUserInfoView;->-$$Nest$fput_hideTemp(Lcom/metamoji/nt/NtUnitEditUserInfoView;Z)V

    .line 787
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 789
    iget-object v2, p0, Lcom/metamoji/nt/NtUnitEditUserInfoView$13;->this$0:Lcom/metamoji/nt/NtUnitEditUserInfoView;

    invoke-virtual {v2}, Lcom/metamoji/nt/NtUnitEditUserInfoView;->layoutLabels()V

    .line 790
    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->getEditorDelegate()Lcom/metamoji/nt/INtEditor;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/metamoji/nt/INtEditor;->setUnitEditUserInfoViewVisibility(I)V

    .line 793
    :cond_0
    iget-object v0, p0, Lcom/metamoji/nt/NtUnitEditUserInfoView$13;->this$0:Lcom/metamoji/nt/NtUnitEditUserInfoView;

    invoke-static {v0}, Lcom/metamoji/nt/NtUnitEditUserInfoView;->-$$Nest$fget_popupInfos(Lcom/metamoji/nt/NtUnitEditUserInfoView;)Ljava/util/HashMap;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/metamoji/nt/NtUnitEditUserInfoView$13;->this$0:Lcom/metamoji/nt/NtUnitEditUserInfoView;

    invoke-static {v0}, Lcom/metamoji/nt/NtUnitEditUserInfoView;->-$$Nest$fget_popupInfos(Lcom/metamoji/nt/NtUnitEditUserInfoView;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-gtz v0, :cond_2

    .line 794
    :cond_1
    iget-object v0, p0, Lcom/metamoji/nt/NtUnitEditUserInfoView$13;->this$0:Lcom/metamoji/nt/NtUnitEditUserInfoView;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/metamoji/nt/NtUnitEditUserInfoView;->-$$Nest$fput_popupInfos(Lcom/metamoji/nt/NtUnitEditUserInfoView;Ljava/util/HashMap;)V

    .line 795
    iget-object v0, p0, Lcom/metamoji/nt/NtUnitEditUserInfoView$13;->this$0:Lcom/metamoji/nt/NtUnitEditUserInfoView;

    invoke-virtual {v0, v1}, Lcom/metamoji/nt/NtUnitEditUserInfoView;->showInfoView(Z)V

    :cond_2
    return-void
.end method
