.class Lcom/metamoji/mazec/ui/KeyboardManager$11;
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

    .line 386
    iput-object p1, p0, Lcom/metamoji/mazec/ui/KeyboardManager$11;->this$0:Lcom/metamoji/mazec/ui/KeyboardManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute()Z
    .locals 1

    .line 389
    iget-object v0, p0, Lcom/metamoji/mazec/ui/KeyboardManager$11;->this$0:Lcom/metamoji/mazec/ui/KeyboardManager;

    invoke-virtual {v0}, Lcom/metamoji/mazec/ui/KeyboardManager;->commitConversionText()Z

    move-result v0

    return v0
.end method
