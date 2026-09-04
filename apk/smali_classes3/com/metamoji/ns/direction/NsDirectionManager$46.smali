.class Lcom/metamoji/ns/direction/NsDirectionManager$46;
.super Ljava/lang/Object;
.source "NsDirectionManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ns/direction/NsDirectionManager;->attachBoothForSchool(Lcom/metamoji/nt/NtPageController;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/ns/direction/NsDirectionManager;

.field final synthetic val$currentPage:Lcom/metamoji/nt/NtPageController;


# direct methods
.method constructor <init>(Lcom/metamoji/ns/direction/NsDirectionManager;Lcom/metamoji/nt/NtPageController;)V
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

    .line 3005
    iput-object p1, p0, Lcom/metamoji/ns/direction/NsDirectionManager$46;->this$0:Lcom/metamoji/ns/direction/NsDirectionManager;

    iput-object p2, p0, Lcom/metamoji/ns/direction/NsDirectionManager$46;->val$currentPage:Lcom/metamoji/nt/NtPageController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 3008
    iget-object v0, p0, Lcom/metamoji/ns/direction/NsDirectionManager$46;->this$0:Lcom/metamoji/ns/direction/NsDirectionManager;

    iget-object v1, p0, Lcom/metamoji/ns/direction/NsDirectionManager$46;->val$currentPage:Lcom/metamoji/nt/NtPageController;

    invoke-static {v0, v1}, Lcom/metamoji/ns/direction/NsDirectionManager;->-$$Nest$mattachBoothInnerForSchool(Lcom/metamoji/ns/direction/NsDirectionManager;Lcom/metamoji/nt/NtPageController;)V

    return-void
.end method
