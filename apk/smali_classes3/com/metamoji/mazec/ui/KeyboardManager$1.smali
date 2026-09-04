.class Lcom/metamoji/mazec/ui/KeyboardManager$1;
.super Lcom/metamoji/mazec/MazecEventAdapter;
.source "KeyboardManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/mazec/ui/KeyboardManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/mazec/ui/KeyboardManager;


# direct methods
.method constructor <init>(Lcom/metamoji/mazec/ui/KeyboardManager;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 222
    iput-object p1, p0, Lcom/metamoji/mazec/ui/KeyboardManager$1;->this$0:Lcom/metamoji/mazec/ui/KeyboardManager;

    invoke-direct {p0}, Lcom/metamoji/mazec/MazecEventAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onContentsCleared(Lcom/metamoji/mazec/MazecIms;)V
    .locals 1

    .line 224
    invoke-virtual {p1}, Lcom/metamoji/mazec/MazecIms;->getInputMode()I

    move-result p1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    .line 225
    iget-object p1, p0, Lcom/metamoji/mazec/ui/KeyboardManager$1;->this$0:Lcom/metamoji/mazec/ui/KeyboardManager;

    invoke-virtual {p1}, Lcom/metamoji/mazec/ui/KeyboardManager;->clearCurrentClause()V

    :cond_0
    return-void
.end method
