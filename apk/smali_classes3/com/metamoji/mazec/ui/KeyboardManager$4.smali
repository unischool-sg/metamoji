.class Lcom/metamoji/mazec/ui/KeyboardManager$4;
.super Ljava/lang/Object;
.source "KeyboardManager.java"

# interfaces
.implements Lcom/metamoji/mazec/ui/KeyboardManager$KeyAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/mazec/ui/KeyboardManager;->createActionMap()Ljava/util/Map;
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

    .line 325
    iput-object p1, p0, Lcom/metamoji/mazec/ui/KeyboardManager$4;->this$0:Lcom/metamoji/mazec/ui/KeyboardManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute()Z
    .locals 5

    .line 328
    iget-object v0, p0, Lcom/metamoji/mazec/ui/KeyboardManager$4;->this$0:Lcom/metamoji/mazec/ui/KeyboardManager;

    invoke-static {v0}, Lcom/metamoji/mazec/ui/KeyboardManager;->-$$Nest$fgetmConversionMode(Lcom/metamoji/mazec/ui/KeyboardManager;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/metamoji/mazec/ui/KeyboardManager$4;->this$0:Lcom/metamoji/mazec/ui/KeyboardManager;

    invoke-static {v0}, Lcom/metamoji/mazec/ui/KeyboardManager;->-$$Nest$fgetmComposingText(Lcom/metamoji/mazec/ui/KeyboardManager;)Lcom/metamoji/mazec/ComposingText;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/metamoji/mazec/ComposingText;->size(I)I

    move-result v0

    if-nez v0, :cond_0

    .line 330
    invoke-static {}, Lcom/metamoji/mazec/MazecIms;->getInstance()Lcom/metamoji/mazec/MazecIms;

    move-result-object v0

    const-string/jumbo v2, "\u3000"

    const/4 v3, 0x0

    const/16 v4, 0xb

    invoke-virtual {v0, v4, v2, v3}, Lcom/metamoji/mazec/MazecIms;->onEvent(ILjava/lang/Object;Ljava/lang/Object;)Z

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
