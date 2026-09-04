.class Lcom/metamoji/forSchool/ui/ScScoreInfoView$9;
.super Ljava/lang/Object;
.source "ScScoreInfoView.java"

# interfaces
.implements Lcom/metamoji/ui/MenuEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/forSchool/ui/ScScoreInfoView;->handleMenuButtonTap(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/forSchool/ui/ScScoreInfoView;

.field final synthetic val$finalCommandManager:Lcom/metamoji/nt/NtCommandManager;


# direct methods
.method constructor <init>(Lcom/metamoji/forSchool/ui/ScScoreInfoView;Lcom/metamoji/nt/NtCommandManager;)V
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

    .line 715
    iput-object p1, p0, Lcom/metamoji/forSchool/ui/ScScoreInfoView$9;->this$0:Lcom/metamoji/forSchool/ui/ScScoreInfoView;

    iput-object p2, p0, Lcom/metamoji/forSchool/ui/ScScoreInfoView$9;->val$finalCommandManager:Lcom/metamoji/nt/NtCommandManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSelect(Landroid/view/View;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 718
    check-cast p2, Lcom/metamoji/nt/NtCommand;

    .line 719
    iget-object p1, p0, Lcom/metamoji/forSchool/ui/ScScoreInfoView$9;->val$finalCommandManager:Lcom/metamoji/nt/NtCommandManager;

    invoke-virtual {p1, p2}, Lcom/metamoji/nt/NtCommandManager;->isCommandSurelyEnabled(Lcom/metamoji/nt/NtCommand;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 720
    iget-object p1, p0, Lcom/metamoji/forSchool/ui/ScScoreInfoView$9;->val$finalCommandManager:Lcom/metamoji/nt/NtCommandManager;

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Lcom/metamoji/nt/NtCommandManager;->execCommand(Lcom/metamoji/nt/NtCommand;Lcom/metamoji/cm/CmContext;)Z

    return-void

    .line 723
    :cond_0
    sget p1, Lcom/metamoji/noteanytime/R$string;->Msg_OperationCouldntBeCompleted:I

    invoke-static {p1}, Lcom/metamoji/ns/NsCollaboUtils;->showAlertMessage(I)V

    return-void
.end method
