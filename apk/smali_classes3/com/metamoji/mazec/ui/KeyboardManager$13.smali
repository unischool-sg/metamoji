.class Lcom/metamoji/mazec/ui/KeyboardManager$13;
.super Ljava/lang/Object;
.source "KeyboardManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/mazec/ui/KeyboardManager;->onUIModeChanged(I)V
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

    .line 1332
    iput-object p1, p0, Lcom/metamoji/mazec/ui/KeyboardManager$13;->this$0:Lcom/metamoji/mazec/ui/KeyboardManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1335
    iget-object v0, p0, Lcom/metamoji/mazec/ui/KeyboardManager$13;->this$0:Lcom/metamoji/mazec/ui/KeyboardManager;

    invoke-static {v0}, Lcom/metamoji/mazec/ui/KeyboardManager;->-$$Nest$msetKeyboard(Lcom/metamoji/mazec/ui/KeyboardManager;)V

    return-void
.end method
