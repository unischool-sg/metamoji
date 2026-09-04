.class Lcom/metamoji/mazec/ui/KeyboardManager$6;
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

    .line 346
    iput-object p1, p0, Lcom/metamoji/mazec/ui/KeyboardManager$6;->this$0:Lcom/metamoji/mazec/ui/KeyboardManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute()Z
    .locals 2

    .line 349
    iget-object v0, p0, Lcom/metamoji/mazec/ui/KeyboardManager$6;->this$0:Lcom/metamoji/mazec/ui/KeyboardManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/metamoji/mazec/ui/KeyboardManager;->deleteCharacterFromComposingText(Z)Z

    move-result v0

    return v0
.end method
