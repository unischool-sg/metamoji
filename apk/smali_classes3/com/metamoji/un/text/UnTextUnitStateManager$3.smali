.class Lcom/metamoji/un/text/UnTextUnitStateManager$3;
.super Ljava/lang/Object;
.source "UnTextUnitStateManager.java"

# interfaces
.implements Lcom/metamoji/cm/ICmEventHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/un/text/UnTextUnitStateManager;->onDocumentEditStart()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/metamoji/cm/ICmEventHandler<",
        "Lcom/metamoji/ns/direction/NsUserPropertyChangedEvent;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/un/text/UnTextUnitStateManager;


# direct methods
.method constructor <init>(Lcom/metamoji/un/text/UnTextUnitStateManager;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 649
    iput-object p1, p0, Lcom/metamoji/un/text/UnTextUnitStateManager$3;->this$0:Lcom/metamoji/un/text/UnTextUnitStateManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public invoke(Lcom/metamoji/ns/direction/NsUserPropertyChangedEvent;)V
    .locals 1

    .line 651
    iget-object v0, p0, Lcom/metamoji/un/text/UnTextUnitStateManager$3;->this$0:Lcom/metamoji/un/text/UnTextUnitStateManager;

    invoke-static {v0, p1}, Lcom/metamoji/un/text/UnTextUnitStateManager;->-$$Nest$mhandleCollaboPropertyChanged(Lcom/metamoji/un/text/UnTextUnitStateManager;Lcom/metamoji/ns/direction/NsUserPropertyChangedEvent;)V

    return-void
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 649
    check-cast p1, Lcom/metamoji/ns/direction/NsUserPropertyChangedEvent;

    invoke-virtual {p0, p1}, Lcom/metamoji/un/text/UnTextUnitStateManager$3;->invoke(Lcom/metamoji/ns/direction/NsUserPropertyChangedEvent;)V

    return-void
.end method
