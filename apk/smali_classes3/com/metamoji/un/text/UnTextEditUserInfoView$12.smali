.class Lcom/metamoji/un/text/UnTextEditUserInfoView$12;
.super Ljava/lang/Object;
.source "UnTextEditUserInfoView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/un/text/UnTextEditUserInfoView;->temporarilyHide()V
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

    .line 747
    iput-object p1, p0, Lcom/metamoji/un/text/UnTextEditUserInfoView$12;->this$0:Lcom/metamoji/un/text/UnTextEditUserInfoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 749
    iget-object v0, p0, Lcom/metamoji/un/text/UnTextEditUserInfoView$12;->this$0:Lcom/metamoji/un/text/UnTextEditUserInfoView;

    invoke-static {v0}, Lcom/metamoji/un/text/UnTextEditUserInfoView;->-$$Nest$fget_hideTemp(Lcom/metamoji/un/text/UnTextEditUserInfoView;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 750
    iget-object v0, p0, Lcom/metamoji/un/text/UnTextEditUserInfoView$12;->this$0:Lcom/metamoji/un/text/UnTextEditUserInfoView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/metamoji/un/text/UnTextEditUserInfoView;->-$$Nest$fput_hideTemp(Lcom/metamoji/un/text/UnTextEditUserInfoView;Z)V

    .line 752
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 754
    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->getEditorDelegate()Lcom/metamoji/nt/INtEditor;

    move-result-object v0

    const/4 v1, 0x4

    invoke-interface {v0, v1}, Lcom/metamoji/nt/INtEditor;->setTextEditUserInfoViewVisibility(I)V

    :cond_0
    return-void
.end method
