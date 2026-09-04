.class Lcom/metamoji/ns/ui/NsCollaboWaitView$7$1;
.super Ljava/lang/Object;
.source "NsCollaboWaitView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ns/ui/NsCollaboWaitView$7;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/metamoji/ns/ui/NsCollaboWaitView$7;


# direct methods
.method constructor <init>(Lcom/metamoji/ns/ui/NsCollaboWaitView$7;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 398
    iput-object p1, p0, Lcom/metamoji/ns/ui/NsCollaboWaitView$7$1;->this$1:Lcom/metamoji/ns/ui/NsCollaboWaitView$7;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 401
    iget-object v0, p0, Lcom/metamoji/ns/ui/NsCollaboWaitView$7$1;->this$1:Lcom/metamoji/ns/ui/NsCollaboWaitView$7;

    iget-object v0, v0, Lcom/metamoji/ns/ui/NsCollaboWaitView$7;->val$finalDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->hide()V

    return-void
.end method
