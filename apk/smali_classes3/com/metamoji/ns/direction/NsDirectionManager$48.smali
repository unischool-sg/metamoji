.class Lcom/metamoji/ns/direction/NsDirectionManager$48;
.super Ljava/lang/Object;
.source "NsDirectionManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ns/direction/NsDirectionManager;->schoolUserModeChanged(IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/ns/direction/NsDirectionManager;

.field final synthetic val$existPresenter:Z

.field final synthetic val$userMode:I


# direct methods
.method constructor <init>(Lcom/metamoji/ns/direction/NsDirectionManager;IZ)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 3188
    iput-object p1, p0, Lcom/metamoji/ns/direction/NsDirectionManager$48;->this$0:Lcom/metamoji/ns/direction/NsDirectionManager;

    iput p2, p0, Lcom/metamoji/ns/direction/NsDirectionManager$48;->val$userMode:I

    iput-boolean p3, p0, Lcom/metamoji/ns/direction/NsDirectionManager$48;->val$existPresenter:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 3191
    iget-object v0, p0, Lcom/metamoji/ns/direction/NsDirectionManager$48;->this$0:Lcom/metamoji/ns/direction/NsDirectionManager;

    iget v1, p0, Lcom/metamoji/ns/direction/NsDirectionManager$48;->val$userMode:I

    iget-boolean v2, p0, Lcom/metamoji/ns/direction/NsDirectionManager$48;->val$existPresenter:Z

    invoke-static {v0, v1, v2}, Lcom/metamoji/ns/direction/NsDirectionManager;->-$$Nest$monUserModeChanged(Lcom/metamoji/ns/direction/NsDirectionManager;IZ)V

    return-void
.end method
