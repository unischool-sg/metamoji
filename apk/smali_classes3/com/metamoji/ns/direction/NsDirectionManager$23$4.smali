.class Lcom/metamoji/ns/direction/NsDirectionManager$23$4;
.super Ljava/lang/Object;
.source "NsDirectionManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ns/direction/NsDirectionManager$23;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/metamoji/ns/direction/NsDirectionManager$23;

.field final synthetic val$collaboSettings:Lcom/metamoji/ns/NsCollaboSettings;

.field final synthetic val$pageController:Lcom/metamoji/nt/NtPageController;


# direct methods
.method constructor <init>(Lcom/metamoji/ns/direction/NsDirectionManager$23;Lcom/metamoji/nt/NtPageController;Lcom/metamoji/ns/NsCollaboSettings;)V
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

    .line 1533
    iput-object p1, p0, Lcom/metamoji/ns/direction/NsDirectionManager$23$4;->this$1:Lcom/metamoji/ns/direction/NsDirectionManager$23;

    iput-object p2, p0, Lcom/metamoji/ns/direction/NsDirectionManager$23$4;->val$pageController:Lcom/metamoji/nt/NtPageController;

    iput-object p3, p0, Lcom/metamoji/ns/direction/NsDirectionManager$23$4;->val$collaboSettings:Lcom/metamoji/ns/NsCollaboSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1538
    iget-object v0, p0, Lcom/metamoji/ns/direction/NsDirectionManager$23$4;->this$1:Lcom/metamoji/ns/direction/NsDirectionManager$23;

    iget-object v0, v0, Lcom/metamoji/ns/direction/NsDirectionManager$23;->this$0:Lcom/metamoji/ns/direction/NsDirectionManager;

    iget-object v1, p0, Lcom/metamoji/ns/direction/NsDirectionManager$23$4;->val$pageController:Lcom/metamoji/nt/NtPageController;

    invoke-virtual {v0, v1}, Lcom/metamoji/ns/direction/NsDirectionManager;->attachBoothForSchool(Lcom/metamoji/nt/NtPageController;)V

    return-void
.end method
