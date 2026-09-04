.class Lcom/metamoji/nt/NtUnitStateManager$4$1;
.super Ljava/util/TimerTask;
.source "NtUnitStateManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/nt/NtUnitStateManager$4;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/metamoji/nt/NtUnitStateManager$4;


# direct methods
.method constructor <init>(Lcom/metamoji/nt/NtUnitStateManager$4;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 605
    iput-object p1, p0, Lcom/metamoji/nt/NtUnitStateManager$4$1;->this$1:Lcom/metamoji/nt/NtUnitStateManager$4;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 608
    iget-object v0, p0, Lcom/metamoji/nt/NtUnitStateManager$4$1;->this$1:Lcom/metamoji/nt/NtUnitStateManager$4;

    iget-object v0, v0, Lcom/metamoji/nt/NtUnitStateManager$4;->this$0:Lcom/metamoji/nt/NtUnitStateManager;

    invoke-static {v0}, Lcom/metamoji/nt/NtUnitStateManager;->-$$Nest$mtimerCheckEditUser(Lcom/metamoji/nt/NtUnitStateManager;)V

    return-void
.end method
