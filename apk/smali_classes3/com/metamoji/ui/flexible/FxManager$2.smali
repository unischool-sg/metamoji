.class Lcom/metamoji/ui/flexible/FxManager$2;
.super Ljava/lang/Object;
.source "FxManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ui/flexible/FxManager;->launchHelp(Lcom/metamoji/ui/flexible/FxManager$FxHelpId;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/ui/flexible/FxManager;

.field final synthetic val$hid2:Lcom/metamoji/ui/flexible/FxManager$FxHelpId;


# direct methods
.method constructor <init>(Lcom/metamoji/ui/flexible/FxManager;Lcom/metamoji/ui/flexible/FxManager$FxHelpId;)V
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

    .line 1813
    iput-object p1, p0, Lcom/metamoji/ui/flexible/FxManager$2;->this$0:Lcom/metamoji/ui/flexible/FxManager;

    iput-object p2, p0, Lcom/metamoji/ui/flexible/FxManager$2;->val$hid2:Lcom/metamoji/ui/flexible/FxManager$FxHelpId;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1816
    iget-object v0, p0, Lcom/metamoji/ui/flexible/FxManager$2;->this$0:Lcom/metamoji/ui/flexible/FxManager;

    iget-object v1, p0, Lcom/metamoji/ui/flexible/FxManager$2;->val$hid2:Lcom/metamoji/ui/flexible/FxManager$FxHelpId;

    invoke-virtual {v0, v1}, Lcom/metamoji/ui/flexible/FxManager;->updateHelp(Lcom/metamoji/ui/flexible/FxManager$FxHelpId;)V

    return-void
.end method
