.class Lcom/metamoji/un/text/UnTextEditUserInfoView$13;
.super Ljava/lang/Object;
.source "UnTextEditUserInfoView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/un/text/UnTextEditUserInfoView;->temporarilyRestore()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/un/text/UnTextEditUserInfoView;


# direct methods
.method constructor <init>(Lcom/metamoji/un/text/UnTextEditUserInfoView;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 765
    iput-object p1, p0, Lcom/metamoji/un/text/UnTextEditUserInfoView$13;->this$0:Lcom/metamoji/un/text/UnTextEditUserInfoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 768
    iget-object v0, p0, Lcom/metamoji/un/text/UnTextEditUserInfoView$13;->this$0:Lcom/metamoji/un/text/UnTextEditUserInfoView;

    invoke-static {v0}, Lcom/metamoji/un/text/UnTextEditUserInfoView;->-$$Nest$fget_hideTemp(Lcom/metamoji/un/text/UnTextEditUserInfoView;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 769
    iget-object v0, p0, Lcom/metamoji/un/text/UnTextEditUserInfoView$13;->this$0:Lcom/metamoji/un/text/UnTextEditUserInfoView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/metamoji/un/text/UnTextEditUserInfoView;->-$$Nest$fput_hideTemp(Lcom/metamoji/un/text/UnTextEditUserInfoView;Z)V

    .line 771
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 773
    iget-object v2, p0, Lcom/metamoji/un/text/UnTextEditUserInfoView$13;->this$0:Lcom/metamoji/un/text/UnTextEditUserInfoView;

    invoke-virtual {v2}, Lcom/metamoji/un/text/UnTextEditUserInfoView;->layoutLabels()V

    .line 774
    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->getEditorDelegate()Lcom/metamoji/nt/INtEditor;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/metamoji/nt/INtEditor;->setTextEditUserInfoViewVisibility(I)V

    .line 777
    :cond_0
    iget-object v0, p0, Lcom/metamoji/un/text/UnTextEditUserInfoView$13;->this$0:Lcom/metamoji/un/text/UnTextEditUserInfoView;

    invoke-static {v0}, Lcom/metamoji/un/text/UnTextEditUserInfoView;->-$$Nest$fget_popupInfos(Lcom/metamoji/un/text/UnTextEditUserInfoView;)Ljava/util/HashMap;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/metamoji/un/text/UnTextEditUserInfoView$13;->this$0:Lcom/metamoji/un/text/UnTextEditUserInfoView;

    invoke-static {v0}, Lcom/metamoji/un/text/UnTextEditUserInfoView;->-$$Nest$fget_popupInfos(Lcom/metamoji/un/text/UnTextEditUserInfoView;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-gtz v0, :cond_2

    .line 778
    :cond_1
    iget-object v0, p0, Lcom/metamoji/un/text/UnTextEditUserInfoView$13;->this$0:Lcom/metamoji/un/text/UnTextEditUserInfoView;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/metamoji/un/text/UnTextEditUserInfoView;->-$$Nest$fput_popupInfos(Lcom/metamoji/un/text/UnTextEditUserInfoView;Ljava/util/HashMap;)V

    .line 779
    iget-object v0, p0, Lcom/metamoji/un/text/UnTextEditUserInfoView$13;->this$0:Lcom/metamoji/un/text/UnTextEditUserInfoView;

    invoke-virtual {v0, v1}, Lcom/metamoji/un/text/UnTextEditUserInfoView;->showInfoView(Z)V

    :cond_2
    return-void
.end method
