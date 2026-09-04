.class Lcom/metamoji/ns/ui/NsCollaboWaitView$7;
.super Ljava/lang/Object;
.source "NsCollaboWaitView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ns/ui/NsCollaboWaitView;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/ns/ui/NsCollaboWaitView;

.field final synthetic val$finalDialog:Landroid/app/Dialog;


# direct methods
.method constructor <init>(Lcom/metamoji/ns/ui/NsCollaboWaitView;Landroid/app/Dialog;)V
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

    .line 395
    iput-object p1, p0, Lcom/metamoji/ns/ui/NsCollaboWaitView$7;->this$0:Lcom/metamoji/ns/ui/NsCollaboWaitView;

    iput-object p2, p0, Lcom/metamoji/ns/ui/NsCollaboWaitView$7;->val$finalDialog:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 398
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    new-instance v1, Lcom/metamoji/ns/ui/NsCollaboWaitView$7$1;

    invoke-direct {v1, p0}, Lcom/metamoji/ns/ui/NsCollaboWaitView$7$1;-><init>(Lcom/metamoji/ns/ui/NsCollaboWaitView$7;)V

    invoke-virtual {v0, v1}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThreadAsync(Ljava/lang/Runnable;)Z

    return-void
.end method
