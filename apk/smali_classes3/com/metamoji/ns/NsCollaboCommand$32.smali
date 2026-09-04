.class Lcom/metamoji/ns/NsCollaboCommand$32;
.super Ljava/lang/Object;
.source "NsCollaboCommand.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ns/NsCollaboCommand;->checkUserInfoWithAfterAction(Lcom/metamoji/ns/INsCollaboAction;Lcom/metamoji/ns/NsCollaboDeviceInfo;Landroidx/fragment/app/FragmentActivity;Lcom/metamoji/ns/INsCollaboAction;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$afterAction:Lcom/metamoji/ns/INsCollaboAction;

.field final synthetic val$deviceInfo:Lcom/metamoji/ns/NsCollaboDeviceInfo;

.field final synthetic val$inputNickName:Z

.field final synthetic val$startupMsgRollbackAction:Lcom/metamoji/ns/INsCollaboAction;


# direct methods
.method constructor <init>(ZLcom/metamoji/ns/INsCollaboAction;Lcom/metamoji/ns/NsCollaboDeviceInfo;Lcom/metamoji/ns/INsCollaboAction;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 2683
    iput-boolean p1, p0, Lcom/metamoji/ns/NsCollaboCommand$32;->val$inputNickName:Z

    iput-object p2, p0, Lcom/metamoji/ns/NsCollaboCommand$32;->val$afterAction:Lcom/metamoji/ns/INsCollaboAction;

    iput-object p3, p0, Lcom/metamoji/ns/NsCollaboCommand$32;->val$deviceInfo:Lcom/metamoji/ns/NsCollaboDeviceInfo;

    iput-object p4, p0, Lcom/metamoji/ns/NsCollaboCommand$32;->val$startupMsgRollbackAction:Lcom/metamoji/ns/INsCollaboAction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 2686
    iget-boolean v0, p0, Lcom/metamoji/ns/NsCollaboCommand$32;->val$inputNickName:Z

    new-instance v1, Lcom/metamoji/ns/NsCollaboCommand$32$1;

    invoke-direct {v1, p0}, Lcom/metamoji/ns/NsCollaboCommand$32$1;-><init>(Lcom/metamoji/ns/NsCollaboCommand$32;)V

    const/4 v2, 0x1

    invoke-static {v2, v0, v1}, Lcom/metamoji/ns/NsCollaboCommand;->showCollaboSettings(ZZLcom/metamoji/ns/INsCollaboAction;)V

    return-void
.end method
