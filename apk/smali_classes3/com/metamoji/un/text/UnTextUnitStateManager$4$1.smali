.class Lcom/metamoji/un/text/UnTextUnitStateManager$4$1;
.super Ljava/util/TimerTask;
.source "UnTextUnitStateManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/un/text/UnTextUnitStateManager$4;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/metamoji/un/text/UnTextUnitStateManager$4;


# direct methods
.method constructor <init>(Lcom/metamoji/un/text/UnTextUnitStateManager$4;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 729
    iput-object p1, p0, Lcom/metamoji/un/text/UnTextUnitStateManager$4$1;->this$1:Lcom/metamoji/un/text/UnTextUnitStateManager$4;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 732
    iget-object v0, p0, Lcom/metamoji/un/text/UnTextUnitStateManager$4$1;->this$1:Lcom/metamoji/un/text/UnTextUnitStateManager$4;

    iget-object v0, v0, Lcom/metamoji/un/text/UnTextUnitStateManager$4;->this$0:Lcom/metamoji/un/text/UnTextUnitStateManager;

    invoke-static {v0}, Lcom/metamoji/un/text/UnTextUnitStateManager;->-$$Nest$mtimerCheckEditUser(Lcom/metamoji/un/text/UnTextUnitStateManager;)V

    return-void
.end method
