.class Lcom/metamoji/nt/NtUnitStateManager$3;
.super Ljava/lang/Object;
.source "NtUnitStateManager.java"

# interfaces
.implements Lcom/metamoji/cm/ICmEventHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/nt/NtUnitStateManager;->onDocumentEditStart()V
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
.field final synthetic this$0:Lcom/metamoji/nt/NtUnitStateManager;


# direct methods
.method constructor <init>(Lcom/metamoji/nt/NtUnitStateManager;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 521
    iput-object p1, p0, Lcom/metamoji/nt/NtUnitStateManager$3;->this$0:Lcom/metamoji/nt/NtUnitStateManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public invoke(Lcom/metamoji/ns/direction/NsUserPropertyChangedEvent;)V
    .locals 1

    .line 523
    iget-object v0, p0, Lcom/metamoji/nt/NtUnitStateManager$3;->this$0:Lcom/metamoji/nt/NtUnitStateManager;

    invoke-static {v0, p1}, Lcom/metamoji/nt/NtUnitStateManager;->-$$Nest$mhandleCollaboPropertyChanged(Lcom/metamoji/nt/NtUnitStateManager;Lcom/metamoji/ns/direction/NsUserPropertyChangedEvent;)V

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

    .line 521
    check-cast p1, Lcom/metamoji/ns/direction/NsUserPropertyChangedEvent;

    invoke-virtual {p0, p1}, Lcom/metamoji/nt/NtUnitStateManager$3;->invoke(Lcom/metamoji/ns/direction/NsUserPropertyChangedEvent;)V

    return-void
.end method
