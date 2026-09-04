.class Lcom/metamoji/nt/cabinet/cabinetWaitView$1;
.super Ljava/lang/Object;
.source "cabinetWaitView.java"

# interfaces
.implements Lcom/metamoji/nt/cabinet/cabinetWaitView$ICancelAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/nt/cabinet/cabinetWaitView;->show(Lcom/metamoji/sd/cs/SdRequestCanceller;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/nt/cabinet/cabinetWaitView;

.field final synthetic val$canceller:Lcom/metamoji/sd/cs/SdRequestCanceller;


# direct methods
.method constructor <init>(Lcom/metamoji/nt/cabinet/cabinetWaitView;Lcom/metamoji/sd/cs/SdRequestCanceller;)V
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

    .line 39
    iput-object p1, p0, Lcom/metamoji/nt/cabinet/cabinetWaitView$1;->this$0:Lcom/metamoji/nt/cabinet/cabinetWaitView;

    iput-object p2, p0, Lcom/metamoji/nt/cabinet/cabinetWaitView$1;->val$canceller:Lcom/metamoji/sd/cs/SdRequestCanceller;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public action()V
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/metamoji/nt/cabinet/cabinetWaitView$1;->val$canceller:Lcom/metamoji/sd/cs/SdRequestCanceller;

    invoke-virtual {v0}, Lcom/metamoji/sd/cs/SdRequestCanceller;->cancel()V

    return-void
.end method
