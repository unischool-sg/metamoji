.class Lcom/metamoji/ns/NsCollaboCommand$31;
.super Ljava/lang/Object;
.source "NsCollaboCommand.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ns/NsCollaboCommand;->checkCollaboInfoWithAfterAction(Lcom/metamoji/ns/INsCollaboAction;Landroidx/fragment/app/FragmentActivity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$afterAction:Lcom/metamoji/ns/INsCollaboAction;

.field final synthetic val$deviceInfo:Lcom/metamoji/ns/NsCollaboDeviceInfo;

.field final synthetic val$startupActivity:Landroidx/fragment/app/FragmentActivity;


# direct methods
.method constructor <init>(Landroidx/fragment/app/FragmentActivity;Lcom/metamoji/ns/INsCollaboAction;Lcom/metamoji/ns/NsCollaboDeviceInfo;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 2642
    iput-object p1, p0, Lcom/metamoji/ns/NsCollaboCommand$31;->val$startupActivity:Landroidx/fragment/app/FragmentActivity;

    iput-object p2, p0, Lcom/metamoji/ns/NsCollaboCommand$31;->val$afterAction:Lcom/metamoji/ns/INsCollaboAction;

    iput-object p3, p0, Lcom/metamoji/ns/NsCollaboCommand$31;->val$deviceInfo:Lcom/metamoji/ns/NsCollaboDeviceInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 2646
    iget-object v0, p0, Lcom/metamoji/ns/NsCollaboCommand$31;->val$startupActivity:Landroidx/fragment/app/FragmentActivity;

    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/metamoji/noteanytime/StartupActivity;

    if-eqz v1, :cond_0

    .line 2648
    check-cast v0, Lcom/metamoji/noteanytime/StartupActivity;

    invoke-virtual {v0}, Lcom/metamoji/noteanytime/StartupActivity;->getInfoLabelText()Ljava/lang/String;

    move-result-object v0

    .line 2649
    new-instance v1, Lcom/metamoji/ns/NsCollaboCommand$31$1;

    invoke-direct {v1, p0, v0}, Lcom/metamoji/ns/NsCollaboCommand$31$1;-><init>(Lcom/metamoji/ns/NsCollaboCommand$31;Ljava/lang/String;)V

    .line 2656
    iget-object v0, p0, Lcom/metamoji/ns/NsCollaboCommand$31;->val$startupActivity:Landroidx/fragment/app/FragmentActivity;

    move-object v2, v0

    check-cast v2, Lcom/metamoji/noteanytime/StartupActivity;

    sget v3, Lcom/metamoji/noteanytime/R$string;->Share_App_First_Time_Initializing:I

    invoke-virtual {v0, v3}, Landroidx/fragment/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/metamoji/noteanytime/StartupActivity;->showInfoLabelTextOnMainThread(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 2659
    :goto_0
    iget-object v0, p0, Lcom/metamoji/ns/NsCollaboCommand$31;->val$afterAction:Lcom/metamoji/ns/INsCollaboAction;

    iget-object v2, p0, Lcom/metamoji/ns/NsCollaboCommand$31;->val$deviceInfo:Lcom/metamoji/ns/NsCollaboDeviceInfo;

    iget-object v3, p0, Lcom/metamoji/ns/NsCollaboCommand$31;->val$startupActivity:Landroidx/fragment/app/FragmentActivity;

    invoke-static {v0, v2, v3, v1}, Lcom/metamoji/ns/NsCollaboCommand;->checkUserInfoWithAfterAction(Lcom/metamoji/ns/INsCollaboAction;Lcom/metamoji/ns/NsCollaboDeviceInfo;Landroidx/fragment/app/FragmentActivity;Lcom/metamoji/ns/INsCollaboAction;)V

    return-void
.end method
