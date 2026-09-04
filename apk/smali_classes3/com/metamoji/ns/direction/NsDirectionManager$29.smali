.class Lcom/metamoji/ns/direction/NsDirectionManager$29;
.super Ljava/util/TimerTask;
.source "NsDirectionManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ns/direction/NsDirectionManager;->onUserModeChanged(IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/ns/direction/NsDirectionManager;


# direct methods
.method constructor <init>(Lcom/metamoji/ns/direction/NsDirectionManager;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 1880
    iput-object p1, p0, Lcom/metamoji/ns/direction/NsDirectionManager$29;->this$0:Lcom/metamoji/ns/direction/NsDirectionManager;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1883
    iget-object v0, p0, Lcom/metamoji/ns/direction/NsDirectionManager$29;->this$0:Lcom/metamoji/ns/direction/NsDirectionManager;

    invoke-static {v0}, Lcom/metamoji/ns/direction/NsDirectionManager;->-$$Nest$monFollowPresenterTimer(Lcom/metamoji/ns/direction/NsDirectionManager;)V

    return-void
.end method
