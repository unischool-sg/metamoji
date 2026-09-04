.class Lcom/metamoji/ui/dialog/CabinetInputBoxParticipationCodeDialog$1;
.super Ljava/lang/Object;
.source "CabinetInputBoxParticipationCodeDialog.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ui/dialog/CabinetInputBoxParticipationCodeDialog;->onActivityCreated(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/ui/dialog/CabinetInputBoxParticipationCodeDialog;

.field final synthetic val$layout:Landroid/widget/LinearLayout;


# direct methods
.method constructor <init>(Lcom/metamoji/ui/dialog/CabinetInputBoxParticipationCodeDialog;Landroid/widget/LinearLayout;)V
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

    .line 62
    iput-object p1, p0, Lcom/metamoji/ui/dialog/CabinetInputBoxParticipationCodeDialog$1;->this$0:Lcom/metamoji/ui/dialog/CabinetInputBoxParticipationCodeDialog;

    iput-object p2, p0, Lcom/metamoji/ui/dialog/CabinetInputBoxParticipationCodeDialog$1;->val$layout:Landroid/widget/LinearLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 4

    .line 66
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    new-instance v1, Lcom/metamoji/ui/dialog/CabinetInputBoxParticipationCodeDialog$1$1;

    invoke-direct {v1, p0}, Lcom/metamoji/ui/dialog/CabinetInputBoxParticipationCodeDialog$1$1;-><init>(Lcom/metamoji/ui/dialog/CabinetInputBoxParticipationCodeDialog$1;)V

    const-wide/16 v2, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThreadAsync(Ljava/lang/Runnable;J)Z

    .line 73
    iget-object v0, p0, Lcom/metamoji/ui/dialog/CabinetInputBoxParticipationCodeDialog$1;->val$layout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/metamoji/ui/dialog/CabinetInputBoxParticipationCodeDialog$1;->this$0:Lcom/metamoji/ui/dialog/CabinetInputBoxParticipationCodeDialog;

    invoke-static {v1}, Lcom/metamoji/ui/dialog/CabinetInputBoxParticipationCodeDialog;->-$$Nest$fget_globalLayoutListener(Lcom/metamoji/ui/dialog/CabinetInputBoxParticipationCodeDialog;)Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method
