.class Lcom/metamoji/nt/NtUnitEditUserInfoView$12;
.super Ljava/lang/Object;
.source "NtUnitEditUserInfoView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/nt/NtUnitEditUserInfoView;->temporarilyHide()V
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

    .line 763
    iput-object p1, p0, Lcom/metamoji/nt/NtUnitEditUserInfoView$12;->this$0:Lcom/metamoji/nt/NtUnitEditUserInfoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 765
    iget-object v0, p0, Lcom/metamoji/nt/NtUnitEditUserInfoView$12;->this$0:Lcom/metamoji/nt/NtUnitEditUserInfoView;

    invoke-static {v0}, Lcom/metamoji/nt/NtUnitEditUserInfoView;->-$$Nest$fget_hideTemp(Lcom/metamoji/nt/NtUnitEditUserInfoView;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 766
    iget-object v0, p0, Lcom/metamoji/nt/NtUnitEditUserInfoView$12;->this$0:Lcom/metamoji/nt/NtUnitEditUserInfoView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/metamoji/nt/NtUnitEditUserInfoView;->-$$Nest$fput_hideTemp(Lcom/metamoji/nt/NtUnitEditUserInfoView;Z)V

    .line 768
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 770
    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->getEditorDelegate()Lcom/metamoji/nt/INtEditor;

    move-result-object v0

    const/4 v1, 0x4

    invoke-interface {v0, v1}, Lcom/metamoji/nt/INtEditor;->setUnitEditUserInfoViewVisibility(I)V

    :cond_0
    return-void
.end method
